; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32 }

@newport_xsize = common dso_local global i32 0, align 4
@newport_ysize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @newport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newport_init(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @newport_xsize, align 4
  %8 = sdiv i32 %7, 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @newport_ysize, align 4
  %10 = sdiv i32 %9, 16
  store i32 %10, i32* %6, align 4
  %11 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @vc_resize(%struct.vc_data* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %15
  ret void
}

declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
