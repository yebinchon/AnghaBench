; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i64, i32, %struct.bfa_itnim_s*, %struct.bfad_ioim_s* }
%struct.bfa_s = type { i32 }
%struct.bfad_ioim_s = type { i32 }
%struct.bfa_itnim_s = type { i32 }
%struct.bfa_fcpim_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_iotag_s = type { i32 }

@no_iotags = common dso_local global i32 0, align 4
@total_ios = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfa_ioim_s* @bfa_ioim_alloc(%struct.bfa_s* %0, %struct.bfad_ioim_s* %1, %struct.bfa_itnim_s* %2, i32 %3) #0 {
  %5 = alloca %struct.bfa_ioim_s*, align 8
  %6 = alloca %struct.bfa_s*, align 8
  %7 = alloca %struct.bfad_ioim_s*, align 8
  %8 = alloca %struct.bfa_itnim_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfa_fcpim_s*, align 8
  %11 = alloca %struct.bfa_ioim_s*, align 8
  %12 = alloca %struct.bfa_iotag_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %6, align 8
  store %struct.bfad_ioim_s* %1, %struct.bfad_ioim_s** %7, align 8
  store %struct.bfa_itnim_s* %2, %struct.bfa_itnim_s** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %14 = call %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s* %13)
  store %struct.bfa_fcpim_s* %14, %struct.bfa_fcpim_s** %10, align 8
  store %struct.bfa_iotag_s* null, %struct.bfa_iotag_s** %12, align 8
  %15 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %10, align 8
  %16 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @bfa_q_deq(i32* %18, %struct.bfa_iotag_s** %12)
  %20 = load %struct.bfa_iotag_s*, %struct.bfa_iotag_s** %12, align 8
  %21 = icmp ne %struct.bfa_iotag_s* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %24 = load i32, i32* @no_iotags, align 4
  %25 = call i32 @bfa_stats(%struct.bfa_itnim_s* %23, i32 %24)
  store %struct.bfa_ioim_s* null, %struct.bfa_ioim_s** %5, align 8
  br label %56

26:                                               ; preds = %4
  %27 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %10, align 8
  %28 = load %struct.bfa_iotag_s*, %struct.bfa_iotag_s** %12, align 8
  %29 = getelementptr inbounds %struct.bfa_iotag_s, %struct.bfa_iotag_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.bfa_ioim_s* @BFA_IOIM_FROM_TAG(%struct.bfa_fcpim_s* %27, i32 %30)
  store %struct.bfa_ioim_s* %31, %struct.bfa_ioim_s** %11, align 8
  %32 = load %struct.bfad_ioim_s*, %struct.bfad_ioim_s** %7, align 8
  %33 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %11, align 8
  %34 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %33, i32 0, i32 4
  store %struct.bfad_ioim_s* %32, %struct.bfad_ioim_s** %34, align 8
  %35 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %36 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %11, align 8
  %37 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %36, i32 0, i32 3
  store %struct.bfa_itnim_s* %35, %struct.bfa_itnim_s** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %11, align 8
  %40 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %11, align 8
  %42 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %44 = load i32, i32* @total_ios, align 4
  %45 = call i32 @bfa_stats(%struct.bfa_itnim_s* %43, i32 %44)
  %46 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %10, align 8
  %47 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %11, align 8
  %51 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %50, i32 0, i32 0
  %52 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %53 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %52, i32 0, i32 0
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %11, align 8
  store %struct.bfa_ioim_s* %55, %struct.bfa_ioim_s** %5, align 8
  br label %56

56:                                               ; preds = %26, %22
  %57 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  ret %struct.bfa_ioim_s* %57
}

declare dso_local %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.bfa_iotag_s**) #1

declare dso_local i32 @bfa_stats(%struct.bfa_itnim_s*, i32) #1

declare dso_local %struct.bfa_ioim_s* @BFA_IOIM_FROM_TAG(%struct.bfa_fcpim_s*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
