; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_els.c_bnx2fc_rrq_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_els.c_bnx2fc_rrq_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_els_cb_arg = type { %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd* }
%struct.bnx2fc_cmd = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"rrq_compl: orig xid = 0x%x, rrq_xid = 0x%x\0A\00", align 1
@bnx2fc_cmd_release = common dso_local global i32 0, align 4
@BNX2FC_FLAG_ELS_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"rrq xid - 0x%x timed out, clean it up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2fc_els_cb_arg*)* @bnx2fc_rrq_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_rrq_compl(%struct.bnx2fc_els_cb_arg* %0) #0 {
  %2 = alloca %struct.bnx2fc_els_cb_arg*, align 8
  %3 = alloca %struct.bnx2fc_cmd*, align 8
  %4 = alloca %struct.bnx2fc_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2fc_els_cb_arg* %0, %struct.bnx2fc_els_cb_arg** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.bnx2fc_els_cb_arg*, %struct.bnx2fc_els_cb_arg** %2, align 8
  %7 = icmp ne %struct.bnx2fc_els_cb_arg* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.bnx2fc_els_cb_arg*, %struct.bnx2fc_els_cb_arg** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2fc_els_cb_arg, %struct.bnx2fc_els_cb_arg* %11, i32 0, i32 1
  %13 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %12, align 8
  store %struct.bnx2fc_cmd* %13, %struct.bnx2fc_cmd** %4, align 8
  %14 = load %struct.bnx2fc_els_cb_arg*, %struct.bnx2fc_els_cb_arg** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_els_cb_arg, %struct.bnx2fc_els_cb_arg* %14, i32 0, i32 0
  %16 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %15, align 8
  store %struct.bnx2fc_cmd* %16, %struct.bnx2fc_cmd** %3, align 8
  %17 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %18 = icmp ne %struct.bnx2fc_cmd* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @BNX2FC_ELS_DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %29, i32 0, i32 4
  %31 = load i32, i32* @bnx2fc_cmd_release, align 4
  %32 = call i32 @kref_put(i32* %30, i32 %31)
  %33 = load i32, i32* @BNX2FC_FLAG_ELS_TIMEOUT, align 4
  %34 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %34, i32 0, i32 3
  %36 = call i64 @test_and_clear_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %1
  %39 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, ...) @BNX2FC_ELS_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %48, i32 0, i32 1
  %50 = call i32 @list_del_init(i32* %49)
  %51 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %54 = call i32 @bnx2fc_initiate_cleanup(%struct.bnx2fc_cmd* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @BUG_ON(i32 %55)
  br label %57

57:                                               ; preds = %47, %38
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.bnx2fc_els_cb_arg*, %struct.bnx2fc_els_cb_arg** %2, align 8
  %60 = call i32 @kfree(%struct.bnx2fc_els_cb_arg* %59)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BNX2FC_ELS_DBG(i8*, i32, ...) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @bnx2fc_initiate_cleanup(%struct.bnx2fc_cmd*) #1

declare dso_local i32 @kfree(%struct.bnx2fc_els_cb_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
