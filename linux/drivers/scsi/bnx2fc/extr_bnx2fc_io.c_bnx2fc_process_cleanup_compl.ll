; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_process_cleanup_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_process_cleanup_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { i32, i64, i32, i32, i64, i32, i32 }
%struct.fcoe_task_ctx_entry = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Entered process_cleanup_compl refcnt = %d, cmd_type = %d\0A\00", align 1
@BNX2FC_FLAG_ISSUE_CLEANUP_REQ = common dso_local global i32 0, align 4
@BNX2FC_FLAG_ISSUE_ABTS = common dso_local global i32 0, align 4
@BNX2FC_FLAG_ABTS_DONE = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@bnx2fc_cmd_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_process_cleanup_compl(%struct.bnx2fc_cmd* %0, %struct.fcoe_task_ctx_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2fc_cmd*, align 8
  %5 = alloca %struct.fcoe_task_ctx_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %4, align 8
  store %struct.fcoe_task_ctx_entry* %1, %struct.fcoe_task_ctx_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %8 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %8, i32 0, i32 2
  %10 = call i32 @kref_read(i32* %9)
  %11 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BNX2FC_IO_DBG(%struct.bnx2fc_cmd* %7, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load i32, i32* @BNX2FC_FLAG_ISSUE_CLEANUP_REQ, align 4
  %16 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %16, i32 0, i32 5
  %18 = call i32 @test_and_clear_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %63

21:                                               ; preds = %3
  %22 = load i32, i32* @BNX2FC_FLAG_ISSUE_ABTS, align 4
  %23 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %23, i32 0, i32 5
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i32, i32* @BNX2FC_FLAG_ABTS_DONE, align 4
  %29 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %29, i32 0, i32 5
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @BNX2FC_FLAG_ABTS_DONE, align 4
  %35 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %35, i32 0, i32 5
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  %38 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %43, i32 0, i32 3
  %45 = call i32 @complete(i32* %44)
  br label %46

46:                                               ; preds = %42, %33
  br label %47

47:                                               ; preds = %46, %27, %21
  %48 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %49 = load i32, i32* @DID_ERROR, align 4
  %50 = call i32 @bnx2fc_scsi_done(%struct.bnx2fc_cmd* %48, i32 %49)
  %51 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %51, i32 0, i32 2
  %53 = load i32, i32* @bnx2fc_cmd_release, align 4
  %54 = call i32 @kref_put(i32* %52, i32 %53)
  %55 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %60, i32 0, i32 0
  %62 = call i32 @complete(i32* %61)
  br label %63

63:                                               ; preds = %20, %59, %47
  ret void
}

declare dso_local i32 @BNX2FC_IO_DBG(%struct.bnx2fc_cmd*, i8*, i32, i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @bnx2fc_scsi_done(%struct.bnx2fc_cmd*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
