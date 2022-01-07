; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_modesense_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_modesense_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_session*, %struct.se_device* }
%struct.se_session = type { i32, i64 }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@TARGET_PROT_DIN_PASS = common dso_local global i32 0, align 4
@TARGET_PROT_DOUT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i32, i32*)* @spc_modesense_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_modesense_control(%struct.se_cmd* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca %struct.se_session*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 1
  %11 = load %struct.se_device*, %struct.se_device** %10, align 8
  store %struct.se_device* %11, %struct.se_device** %7, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 0
  %14 = load %struct.se_session*, %struct.se_session** %13, align 8
  store %struct.se_session* %14, %struct.se_session** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 10, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 10, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %102

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 2, i32* %24, align 4
  %25 = load %struct.se_device*, %struct.se_device** %7, align 8
  %26 = call i64 @target_sense_desc_format(%struct.se_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 4
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.se_device*, %struct.se_device** %7, align 8
  %35 = getelementptr inbounds %struct.se_device, %struct.se_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 16
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.se_device*, %struct.se_device** %7, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %57

49:                                               ; preds = %33
  %50 = load %struct.se_device*, %struct.se_device** %7, align 8
  %51 = getelementptr inbounds %struct.se_device, %struct.se_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 32, i32 0
  br label %57

57:                                               ; preds = %49, %48
  %58 = phi i32 [ 48, %48 ], [ %56, %49 ]
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.se_device*, %struct.se_device** %7, align 8
  %62 = getelementptr inbounds %struct.se_device, %struct.se_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 64, i32 0
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.se_session*, %struct.se_session** %8, align 8
  %71 = getelementptr inbounds %struct.se_session, %struct.se_session* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TARGET_PROT_DIN_PASS, align 4
  %74 = load i32, i32* @TARGET_PROT_DOUT_PASS, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %57
  %79 = load %struct.se_device*, %struct.se_device** %7, align 8
  %80 = getelementptr inbounds %struct.se_device, %struct.se_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.se_session*, %struct.se_session** %8, align 8
  %86 = getelementptr inbounds %struct.se_session, %struct.se_session* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84, %78
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, 128
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %57
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  store i32 255, i32* %97, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 9
  store i32 255, i32* %99, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 11
  store i32 30, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %21
  ret i32 12
}

declare dso_local i64 @target_sense_desc_format(%struct.se_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
