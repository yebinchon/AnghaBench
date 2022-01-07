; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_els.c_bnx2fc_process_els_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_els.c_bnx2fc_process_els_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { i32, i32*, i32 (i32*)*, %struct.bnx2fc_mp_req, i64, i32, i32, i32, i32, i32 }
%struct.bnx2fc_mp_req = type { i32, %struct.fc_frame_header }
%struct.fc_frame_header = type { i32 }
%struct.fcoe_task_ctx_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Entered process_els_compl xid = 0x%xcmd_type = %d\0A\00", align 1
@BNX2FC_FLAG_ELS_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Timer context finished processing this els - 0x%x\0A\00", align 1
@bnx2fc_cmd_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_process_els_compl(%struct.bnx2fc_cmd* %0, %struct.fcoe_task_ctx_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2fc_cmd*, align 8
  %5 = alloca %struct.fcoe_task_ctx_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2fc_mp_req*, align 8
  %8 = alloca %struct.fc_frame_header*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %4, align 8
  store %struct.fcoe_task_ctx_entry* %1, %struct.fcoe_task_ctx_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, i32, ...) @BNX2FC_ELS_DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load i32, i32* @BNX2FC_FLAG_ELS_DONE, align 4
  %19 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %19, i32 0, i32 8
  %21 = call i64 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i32, ...) @BNX2FC_ELS_DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* @bnx2fc_cmd_release, align 4
  %31 = call i32 @kref_put(i32* %29, i32 %30)
  br label %117

32:                                               ; preds = %3
  %33 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %33, i32 0, i32 6
  %35 = call i64 @cancel_delayed_work(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* @bnx2fc_cmd_release, align 4
  %41 = call i32 @kref_put(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %48, i32 0, i32 5
  %50 = call i32 @list_del_init(i32* %49)
  %51 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %54, i32 0, i32 3
  store %struct.bnx2fc_mp_req* %55, %struct.bnx2fc_mp_req** %7, align 8
  %56 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %7, align 8
  %57 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %56, i32 0, i32 1
  store %struct.fc_frame_header* %57, %struct.fc_frame_header** %8, align 8
  %58 = load %struct.fc_frame_header*, %struct.fc_frame_header** %8, align 8
  %59 = bitcast %struct.fc_frame_header* %58 to i32*
  store i32* %59, i32** %9, align 8
  %60 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %61 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cpu_to_be64(i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cpu_to_be64(i32 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cpu_to_be64(i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %85 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %7, align 8
  %92 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %93, i32 0, i32 2
  %95 = load i32 (i32*)*, i32 (i32*)** %94, align 8
  %96 = icmp ne i32 (i32*)* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %53
  %98 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %99 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %104 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %103, i32 0, i32 2
  %105 = load i32 (i32*)*, i32 (i32*)** %104, align 8
  %106 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %107 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 %105(i32* %108)
  %110 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %111 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %102, %97, %53
  %113 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %114 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %113, i32 0, i32 0
  %115 = load i32, i32* @bnx2fc_cmd_release, align 4
  %116 = call i32 @kref_put(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %23
  ret void
}

declare dso_local i32 @BNX2FC_ELS_DBG(i8*, i32, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i64 @cancel_delayed_work(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
