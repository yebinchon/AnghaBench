; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_tcs_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_tcs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_drv = type { i32, i32 }
%struct.tcs_request = type { i32 }
%struct.tcs_group = type { i32, i32, %struct.tcs_request** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsc_drv*, %struct.tcs_request*)* @tcs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs_write(%struct.rsc_drv* %0, %struct.tcs_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsc_drv*, align 8
  %5 = alloca %struct.tcs_request*, align 8
  %6 = alloca %struct.tcs_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rsc_drv* %0, %struct.rsc_drv** %4, align 8
  store %struct.tcs_request* %1, %struct.tcs_request** %5, align 8
  %10 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %11 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %12 = call %struct.tcs_group* @get_tcs_for_msg(%struct.rsc_drv* %10, %struct.tcs_request* %11)
  store %struct.tcs_group* %12, %struct.tcs_group** %6, align 8
  %13 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %14 = call i64 @IS_ERR(%struct.tcs_group* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.tcs_group* %17)
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %21 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %20, i32 0, i32 1
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %25 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %28 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %29 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %30 = call i32 @check_for_req_inflight(%struct.rsc_drv* %27, %struct.tcs_group* %28, %struct.tcs_request* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %35 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  br label %74

37:                                               ; preds = %19
  %38 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %39 = call i32 @find_free_tcs(%struct.tcs_group* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %45 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %74

47:                                               ; preds = %37
  %48 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %49 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %50 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %49, i32 0, i32 2
  %51 = load %struct.tcs_request**, %struct.tcs_request*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %54 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.tcs_request*, %struct.tcs_request** %51, i64 %57
  store %struct.tcs_request* %48, %struct.tcs_request** %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %61 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @set_bit(i32 %59, i32 %62)
  %64 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %65 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %70 = call i32 @__tcs_buffer_write(%struct.rsc_drv* %67, i32 %68, i32 0, %struct.tcs_request* %69)
  %71 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @__tcs_trigger(%struct.rsc_drv* %71, i32 %72)
  br label %74

74:                                               ; preds = %47, %42, %33
  %75 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %76 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %75, i32 0, i32 1
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.tcs_group* @get_tcs_for_msg(%struct.rsc_drv*, %struct.tcs_request*) #1

declare dso_local i64 @IS_ERR(%struct.tcs_group*) #1

declare dso_local i32 @PTR_ERR(%struct.tcs_group*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @check_for_req_inflight(%struct.rsc_drv*, %struct.tcs_group*, %struct.tcs_request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @find_free_tcs(%struct.tcs_group*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @__tcs_buffer_write(%struct.rsc_drv*, i32, i32, %struct.tcs_request*) #1

declare dso_local i32 @__tcs_trigger(%struct.rsc_drv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
