; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_3352.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_3352.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT5350 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_bbp_3352 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_bbp_3352(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %4 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %3, i32 3, i32 0)
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %5, i32 4, i32 80)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %7, i32 31, i32 8)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %9, i32 47, i32 72)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %11, i32 65, i32 44)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %13, i32 66, i32 56)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %15, i32 68, i32 11)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %17, i32 69, i32 18)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %19, i32 73, i32 19)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %21, i32 75, i32 70)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %23, i32 76, i32 40)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %25, i32 77, i32 89)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %27, i32 70, i32 10)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %29, i32 78, i32 14)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %31, i32 80, i32 8)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %33, i32 81, i32 55)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %35, i32 82, i32 98)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = load i32, i32* @RT5350, align 4
  %39 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %42, i32 83, i32 122)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %44, i32 84, i32 154)
  br label %51

46:                                               ; preds = %1
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %47, i32 83, i32 106)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %49, i32 84, i32 153)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %52, i32 86, i32 56)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %54, i32 88, i32 144)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %56, i32 91, i32 4)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %58, i32 92, i32 2)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %60, i32 103, i32 192)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %62, i32 104, i32 146)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = load i32, i32* @RT5350, align 4
  %66 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %69, i32 105, i32 60)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %72 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %71, i32 106, i32 3)
  br label %78

73:                                               ; preds = %51
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %74, i32 105, i32 52)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %76, i32 106, i32 5)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %80 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %79, i32 120, i32 80)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %81, i32 137, i32 15)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %83, i32 163, i32 189)
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %86 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %85, i32 179, i32 2)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %88 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %87, i32 180, i32 0)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %90 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %89, i32 182, i32 64)
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %92 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %91, i32 180, i32 1)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %93, i32 182, i32 156)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %96 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %95, i32 179, i32 0)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %98 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %97, i32 142, i32 4)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %99, i32 143, i32 59)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %101, i32 142, i32 6)
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %103, i32 143, i32 160)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %105, i32 142, i32 7)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %107, i32 143, i32 161)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %110 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %109, i32 142, i32 8)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %112 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %111, i32 143, i32 162)
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %114 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %113, i32 148, i32 200)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %116 = load i32, i32* @RT5350, align 4
  %117 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %78
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %121 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %120, i32 150, i32 64)
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %123 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %122, i32 151, i32 48)
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %125 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %124, i32 152, i32 163)
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %127 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %126, i32 154, i32 0)
  br label %128

128:                                              ; preds = %119, %78
  ret void
}

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
