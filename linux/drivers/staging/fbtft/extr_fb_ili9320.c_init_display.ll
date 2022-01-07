; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9320.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9320.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@DEBUG_INIT_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Device code: 0x%04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Unrecognized Device code: 0x%04X (expected 0x9320)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  %3 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %4 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %5 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %6, align 8
  %8 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %9 = bitcast %struct.fbtft_par* %8 to %struct.fbtft_par.0*
  %10 = call i32 %7(%struct.fbtft_par.0* %9)
  %11 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %12 = call i32 @read_devicecode(%struct.fbtft_par* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @DEBUG_INIT_DISPLAY, align 4
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @fbtft_par_dbg(i32 %13, %struct.fbtft_par* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 37664
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %24 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %22, %19, %1
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %32 = call i32 @write_reg(%struct.fbtft_par* %31, i32 229, i32 32768)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %34 = call i32 @write_reg(%struct.fbtft_par* %33, i32 0, i32 1)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = call i32 @write_reg(%struct.fbtft_par* %35, i32 1, i32 256)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = call i32 @write_reg(%struct.fbtft_par* %37, i32 2, i32 1792)
  %39 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %40 = call i32 @write_reg(%struct.fbtft_par* %39, i32 4, i32 0)
  %41 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %42 = call i32 @write_reg(%struct.fbtft_par* %41, i32 8, i32 514)
  %43 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %44 = call i32 @write_reg(%struct.fbtft_par* %43, i32 9, i32 0)
  %45 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %46 = call i32 @write_reg(%struct.fbtft_par* %45, i32 10, i32 0)
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 @write_reg(%struct.fbtft_par* %47, i32 12, i32 0)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = call i32 @write_reg(%struct.fbtft_par* %49, i32 13, i32 0)
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %52 = call i32 @write_reg(%struct.fbtft_par* %51, i32 15, i32 0)
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %54 = call i32 @write_reg(%struct.fbtft_par* %53, i32 16, i32 0)
  %55 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %56 = call i32 @write_reg(%struct.fbtft_par* %55, i32 17, i32 7)
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %58 = call i32 @write_reg(%struct.fbtft_par* %57, i32 18, i32 0)
  %59 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %60 = call i32 @write_reg(%struct.fbtft_par* %59, i32 19, i32 0)
  %61 = call i32 @mdelay(i32 200)
  %62 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %63 = call i32 @write_reg(%struct.fbtft_par* %62, i32 16, i32 6064)
  %64 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %65 = call i32 @write_reg(%struct.fbtft_par* %64, i32 17, i32 49)
  %66 = call i32 @mdelay(i32 50)
  %67 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %68 = call i32 @write_reg(%struct.fbtft_par* %67, i32 18, i32 312)
  %69 = call i32 @mdelay(i32 50)
  %70 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %71 = call i32 @write_reg(%struct.fbtft_par* %70, i32 19, i32 6144)
  %72 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %73 = call i32 @write_reg(%struct.fbtft_par* %72, i32 41, i32 8)
  %74 = call i32 @mdelay(i32 50)
  %75 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %76 = call i32 @write_reg(%struct.fbtft_par* %75, i32 32, i32 0)
  %77 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %78 = call i32 @write_reg(%struct.fbtft_par* %77, i32 33, i32 0)
  %79 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %80 = call i32 @write_reg(%struct.fbtft_par* %79, i32 80, i32 0)
  %81 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %82 = call i32 @write_reg(%struct.fbtft_par* %81, i32 81, i32 239)
  %83 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %84 = call i32 @write_reg(%struct.fbtft_par* %83, i32 82, i32 0)
  %85 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %86 = call i32 @write_reg(%struct.fbtft_par* %85, i32 83, i32 319)
  %87 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %88 = call i32 @write_reg(%struct.fbtft_par* %87, i32 96, i32 9984)
  %89 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %90 = call i32 @write_reg(%struct.fbtft_par* %89, i32 97, i32 1)
  %91 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %92 = call i32 @write_reg(%struct.fbtft_par* %91, i32 106, i32 0)
  %93 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %94 = call i32 @write_reg(%struct.fbtft_par* %93, i32 128, i32 0)
  %95 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %96 = call i32 @write_reg(%struct.fbtft_par* %95, i32 129, i32 0)
  %97 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %98 = call i32 @write_reg(%struct.fbtft_par* %97, i32 130, i32 0)
  %99 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %100 = call i32 @write_reg(%struct.fbtft_par* %99, i32 131, i32 0)
  %101 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %102 = call i32 @write_reg(%struct.fbtft_par* %101, i32 132, i32 0)
  %103 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %104 = call i32 @write_reg(%struct.fbtft_par* %103, i32 133, i32 0)
  %105 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %106 = call i32 @write_reg(%struct.fbtft_par* %105, i32 144, i32 16)
  %107 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %108 = call i32 @write_reg(%struct.fbtft_par* %107, i32 146, i32 0)
  %109 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %110 = call i32 @write_reg(%struct.fbtft_par* %109, i32 147, i32 3)
  %111 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %112 = call i32 @write_reg(%struct.fbtft_par* %111, i32 149, i32 272)
  %113 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %114 = call i32 @write_reg(%struct.fbtft_par* %113, i32 151, i32 0)
  %115 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %116 = call i32 @write_reg(%struct.fbtft_par* %115, i32 152, i32 0)
  %117 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %118 = call i32 @write_reg(%struct.fbtft_par* %117, i32 7, i32 371)
  ret i32 0
}

declare dso_local i32 @read_devicecode(%struct.fbtft_par*) #1

declare dso_local i32 @fbtft_par_dbg(i32, %struct.fbtft_par*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
