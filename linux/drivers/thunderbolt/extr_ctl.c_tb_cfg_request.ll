; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_cfg_request = type { void (i8*)*, i32, i32, i32, i32, i32, i32, i8*, i64 }

@tb_cfg_request_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_cfg_request(%struct.tb_ctl* %0, %struct.tb_cfg_request* %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_ctl*, align 8
  %7 = alloca %struct.tb_cfg_request*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.tb_ctl* %0, %struct.tb_ctl** %6, align 8
  store %struct.tb_cfg_request* %1, %struct.tb_cfg_request** %7, align 8
  store void (i8*)* %2, void (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %12 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load void (i8*)*, void (i8*)** %8, align 8
  %14 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %15 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %14, i32 0, i32 0
  store void (i8*)* %13, void (i8*)** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %18 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %20 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %19, i32 0, i32 1
  %21 = load i32, i32* @tb_cfg_request_work, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %24 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %23, i32 0, i32 6
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %27 = call i32 @tb_cfg_request_get(%struct.tb_cfg_request* %26)
  %28 = load %struct.tb_ctl*, %struct.tb_ctl** %6, align 8
  %29 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %30 = call i32 @tb_cfg_request_enqueue(%struct.tb_ctl* %28, %struct.tb_cfg_request* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %62

34:                                               ; preds = %4
  %35 = load %struct.tb_ctl*, %struct.tb_ctl** %6, align 8
  %36 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %37 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %40 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %43 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @tb_ctl_tx(%struct.tb_ctl* %35, i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %59

49:                                               ; preds = %34
  %50 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %51 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %56 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %55, i32 0, i32 1
  %57 = call i32 @schedule_work(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  store i32 0, i32* %5, align 4
  br label %66

59:                                               ; preds = %48
  %60 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %61 = call i32 @tb_cfg_request_dequeue(%struct.tb_cfg_request* %60)
  br label %62

62:                                               ; preds = %59, %33
  %63 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %7, align 8
  %64 = call i32 @tb_cfg_request_put(%struct.tb_cfg_request* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tb_cfg_request_get(%struct.tb_cfg_request*) #1

declare dso_local i32 @tb_cfg_request_enqueue(%struct.tb_ctl*, %struct.tb_cfg_request*) #1

declare dso_local i32 @tb_ctl_tx(%struct.tb_ctl*, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @tb_cfg_request_dequeue(%struct.tb_cfg_request*) #1

declare dso_local i32 @tb_cfg_request_put(%struct.tb_cfg_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
