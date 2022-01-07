; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_request_netinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_request_netinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.dim2_hdm = type { void (%struct.most_interface*, i8, i8*)*, i64, i32 }
%struct.mbo = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"Async Tx Not initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.most_interface*, i32, void (%struct.most_interface*, i8, i8*)*)* @request_netinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_netinfo(%struct.most_interface* %0, i32 %1, void (%struct.most_interface*, i8, i8*)* %2) #0 {
  %4 = alloca %struct.most_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.most_interface*, i8, i8*)*, align 8
  %7 = alloca %struct.dim2_hdm*, align 8
  %8 = alloca %struct.mbo*, align 8
  %9 = alloca i32*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.most_interface*, i8, i8*)* %2, void (%struct.most_interface*, i8, i8*)** %6, align 8
  %10 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %11 = call %struct.dim2_hdm* @iface_to_hdm(%struct.most_interface* %10)
  store %struct.dim2_hdm* %11, %struct.dim2_hdm** %7, align 8
  %12 = load void (%struct.most_interface*, i8, i8*)*, void (%struct.most_interface*, i8, i8*)** %6, align 8
  %13 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %14 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %13, i32 0, i32 0
  store void (%struct.most_interface*, i8, i8*)* %12, void (%struct.most_interface*, i8, i8*)** %14, align 8
  %15 = load void (%struct.most_interface*, i8, i8*)*, void (%struct.most_interface*, i8, i8*)** %6, align 8
  %16 = icmp ne void (%struct.most_interface*, i8, i8*)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %20 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %53

25:                                               ; preds = %18
  %26 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %27 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %26, i32 0, i32 2
  %28 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %29 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.mbo* @most_get_mbo(i32* %27, i64 %30, i32* null)
  store %struct.mbo* %31, %struct.mbo** %8, align 8
  %32 = load %struct.mbo*, %struct.mbo** %8, align 8
  %33 = icmp ne %struct.mbo* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %53

35:                                               ; preds = %25
  %36 = load %struct.mbo*, %struct.mbo** %8, align 8
  %37 = getelementptr inbounds %struct.mbo, %struct.mbo* %36, i32 0, i32 0
  store i32 5, i32* %37, align 8
  %38 = load %struct.mbo*, %struct.mbo** %8, align 8
  %39 = getelementptr inbounds %struct.mbo, %struct.mbo* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 3, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 2, i32* %46, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 8, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 64, i32* %50, align 4
  %51 = load %struct.mbo*, %struct.mbo** %8, align 8
  %52 = call i32 @most_submit_mbo(%struct.mbo* %51)
  br label %53

53:                                               ; preds = %35, %34, %23, %17
  ret void
}

declare dso_local %struct.dim2_hdm* @iface_to_hdm(%struct.most_interface*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.mbo* @most_get_mbo(i32*, i64, i32*) #1

declare dso_local i32 @most_submit_mbo(%struct.mbo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
