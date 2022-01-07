; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_cmd_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_cmd_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32 }
%struct.iscsi_session = type { i32, %struct.iscsi_task** }
%struct.iscsi_task = type { i32, i32*, %struct.bnx2i_cmd* }
%struct.bnx2i_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2i_hba*, %struct.iscsi_session*)* @bnx2i_setup_cmd_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_setup_cmd_pool(%struct.bnx2i_hba* %0, %struct.iscsi_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2i_hba*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_task*, align 8
  %8 = alloca %struct.bnx2i_cmd*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %4, align 8
  store %struct.iscsi_session* %1, %struct.iscsi_session** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %16, i32 0, i32 1
  %18 = load %struct.iscsi_task**, %struct.iscsi_task*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %18, i64 %20
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %21, align 8
  store %struct.iscsi_task* %22, %struct.iscsi_task** %7, align 8
  %23 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %24 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %23, i32 0, i32 2
  %25 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %24, align 8
  store %struct.bnx2i_cmd* %25, %struct.bnx2i_cmd** %8, align 8
  %26 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %26, i32 0, i32 0
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %29 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %31 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %34 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %8, align 8
  %35 = call i64 @bnx2i_alloc_bdt(%struct.bnx2i_hba* %32, %struct.iscsi_session* %33, %struct.bnx2i_cmd* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  br label %43

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %9

42:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %49

43:                                               ; preds = %37
  %44 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %46 = call i32 @bnx2i_destroy_cmd_pool(%struct.bnx2i_hba* %44, %struct.iscsi_session* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %42
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @bnx2i_alloc_bdt(%struct.bnx2i_hba*, %struct.iscsi_session*, %struct.bnx2i_cmd*) #1

declare dso_local i32 @bnx2i_destroy_cmd_pool(%struct.bnx2i_hba*, %struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
