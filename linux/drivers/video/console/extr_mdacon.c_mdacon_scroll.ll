; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_mdacon.c_mdacon_scroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_mdacon.c_mdacon_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32 }

@mda_num_columns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32)* @mdacon_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdacon_scroll(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mda_convert_attr(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %83

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %82 [
    i32 128, label %32
    i32 129, label %58
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @mda_addr(i32 0, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @mda_addr(i32 0, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = sub i32 %41, %42
  %44 = load i32, i32* @mda_num_columns, align 4
  %45 = mul i32 %43, %44
  %46 = mul i32 %45, 2
  %47 = call i32 @scr_memmovew(i32 %34, i32 %38, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub i32 %48, %49
  %51 = call i32 @mda_addr(i32 0, i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @mda_num_columns, align 4
  %55 = mul i32 %53, %54
  %56 = mul i32 %55, 2
  %57 = call i32 @scr_memsetw(i32 %51, i32 %52, i32 %56)
  br label %82

58:                                               ; preds = %30
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %59, %60
  %62 = call i32 @mda_addr(i32 0, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @mda_addr(i32 0, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = sub i32 %67, %68
  %70 = load i32, i32* @mda_num_columns, align 4
  %71 = mul i32 %69, %70
  %72 = mul i32 %71, 2
  %73 = call i32 @scr_memmovew(i32 %62, i32 %64, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @mda_addr(i32 0, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @mda_num_columns, align 4
  %79 = mul i32 %77, %78
  %80 = mul i32 %79, 2
  %81 = call i32 @scr_memsetw(i32 %75, i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %30, %58, %32
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %19
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @mda_convert_attr(i32) #1

declare dso_local i32 @scr_memmovew(i32, i32, i32) #1

declare dso_local i32 @mda_addr(i32, i32) #1

declare dso_local i32 @scr_memsetw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
