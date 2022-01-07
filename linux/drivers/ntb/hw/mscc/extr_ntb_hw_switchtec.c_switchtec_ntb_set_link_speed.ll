; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_set_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_set_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i8*, i8*, i32, i32, i32 }

@NTB_SPEED_NONE = common dso_local global i8* null, align 8
@NTB_WIDTH_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_ntb*)* @switchtec_ntb_set_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchtec_ntb_set_link_speed(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca %struct.switchtec_ntb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %2, align 8
  %7 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %8 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** @NTB_SPEED_NONE, align 8
  %13 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %14 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @NTB_WIDTH_NONE, align 8
  %16 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %17 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %20 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %21 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @switchtec_ntb_part_link_speed(%struct.switchtec_ntb* %19, i32 %22, i32* %3, i32* %5)
  %24 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %25 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %26 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @switchtec_ntb_part_link_speed(%struct.switchtec_ntb* %24, i32 %27, i32* %4, i32* %6)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i8* @min(i32 %29, i32 %30)
  %32 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %33 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @min(i32 %34, i32 %35)
  %37 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %38 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %18, %11
  ret void
}

declare dso_local i32 @switchtec_ntb_part_link_speed(%struct.switchtec_ntb*, i32, i32*, i32*) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
