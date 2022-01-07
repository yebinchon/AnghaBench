; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_exec_dev_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_exec_dev_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.ufshcd_lrb* }
%struct.TYPE_4__ = type { i32, %struct.completion* }
%struct.completion = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ufshcd_lrb = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"query_send\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"query_complete_err\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"query_complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32, i32)* @ufshcd_exec_dev_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_exec_dev_cmd(%struct.ufs_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufshcd_lrb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.completion, align 4
  %11 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %13 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %16 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %20 = call i32 @ufshcd_get_dev_cmd_tag(%struct.ufs_hba* %19, i32* %9)
  %21 = call i32 @wait_event(i32 %18, i32 %20)
  %22 = call i32 @init_completion(%struct.completion* %10)
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 3
  %25 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %25, i64 %27
  store %struct.ufshcd_lrb* %28, %struct.ufshcd_lrb** %7, align 8
  %29 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %7, align 8
  %30 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @WARN_ON(i64 %31)
  %33 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %34 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ufshcd_compose_dev_cmd(%struct.ufs_hba* %33, %struct.ufshcd_lrb* %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %87

42:                                               ; preds = %3
  %43 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %44 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.completion* %10, %struct.completion** %45, align 8
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ufshcd_add_query_upiu_trace(%struct.ufs_hba* %46, i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 (...) @wmb()
  %50 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %51 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_lock_irqsave(i32 %54, i64 %55)
  %57 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %7, align 8
  %60 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = call i32 @ufshcd_vops_setup_xfer_req(%struct.ufs_hba* %57, i32 %58, i32 %64)
  %66 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ufshcd_send_command(%struct.ufs_hba* %66, i32 %67)
  %69 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %70 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32 %73, i64 %74)
  %76 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %77 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ufshcd_wait_for_dev_cmd(%struct.ufs_hba* %76, %struct.ufshcd_lrb* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32 @ufshcd_add_query_upiu_trace(%struct.ufs_hba* %80, i32 %81, i8* %85)
  br label %87

87:                                               ; preds = %42, %41
  %88 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @ufshcd_put_dev_cmd_tag(%struct.ufs_hba* %88, i32 %89)
  %91 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %92 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @wake_up(i32* %93)
  %95 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %96 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %95, i32 0, i32 0
  %97 = call i32 @up_read(i32* %96)
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @ufshcd_get_dev_cmd_tag(%struct.ufs_hba*, i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @ufshcd_compose_dev_cmd(%struct.ufs_hba*, %struct.ufshcd_lrb*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ufshcd_add_query_upiu_trace(%struct.ufs_hba*, i32, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ufshcd_vops_setup_xfer_req(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @ufshcd_send_command(%struct.ufs_hba*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ufshcd_wait_for_dev_cmd(%struct.ufs_hba*, %struct.ufshcd_lrb*, i32) #1

declare dso_local i32 @ufshcd_put_dev_cmd_tag(%struct.ufs_hba*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
