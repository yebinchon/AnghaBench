; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_cmd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_cmd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { i64, i32, %struct.io_bdt*, i64, %struct.bnx2fc_cmd_mgr*, %struct.fcoe_port*, i32 }
%struct.io_bdt = type { %struct.bnx2fc_cmd* }
%struct.bnx2fc_cmd_mgr = type { %struct.io_bdt**, i32*, %struct.bnx2fc_cmd**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bnx2fc_cmd_mgr* }
%struct.bnx2fc_rport = type { i32, %struct.TYPE_6__, %struct.fcoe_port* }
%struct.TYPE_6__ = type { i64 }
%struct.list_head = type { i32 }

@BNX2FC_SCSI_MAX_SQES = common dso_local global i64 0, align 8
@BNX2FC_SQ_WQES_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bnx2fc_cmd* @bnx2fc_cmd_alloc(%struct.bnx2fc_rport* %0) #0 {
  %2 = alloca %struct.bnx2fc_cmd*, align 8
  %3 = alloca %struct.bnx2fc_rport*, align 8
  %4 = alloca %struct.fcoe_port*, align 8
  %5 = alloca %struct.bnx2fc_interface*, align 8
  %6 = alloca %struct.bnx2fc_cmd_mgr*, align 8
  %7 = alloca %struct.bnx2fc_cmd*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.io_bdt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %3, align 8
  %14 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %14, i32 0, i32 2
  %16 = load %struct.fcoe_port*, %struct.fcoe_port** %15, align 8
  store %struct.fcoe_port* %16, %struct.fcoe_port** %4, align 8
  %17 = load %struct.fcoe_port*, %struct.fcoe_port** %4, align 8
  %18 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %17, i32 0, i32 0
  %19 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %18, align 8
  store %struct.bnx2fc_interface* %19, %struct.bnx2fc_interface** %5, align 8
  %20 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %23, align 8
  store %struct.bnx2fc_cmd_mgr* %24, %struct.bnx2fc_cmd_mgr** %6, align 8
  %25 = call i32 (...) @get_cpu()
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* @BNX2FC_SCSI_MAX_SQES, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, %struct.bnx2fc_cmd_mgr* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %34, i32 0, i32 0
  %36 = call i64 @atomic_read(i32* %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, %struct.bnx2fc_cmd_mgr* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = call i64 @list_empty(%struct.TYPE_5__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %1
  %46 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* @BNX2FC_SQ_WQES_MAX, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52, %45, %1
  %59 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %6, align 8
  %60 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, %struct.bnx2fc_cmd_mgr* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @spin_unlock_bh(i32* %64)
  %66 = call i32 (...) @put_cpu()
  store %struct.bnx2fc_cmd* null, %struct.bnx2fc_cmd** %2, align 8
  br label %130

67:                                               ; preds = %52
  %68 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %6, align 8
  %69 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, %struct.bnx2fc_cmd_mgr* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.list_head*
  store %struct.list_head* %76, %struct.list_head** %8, align 8
  %77 = load %struct.list_head*, %struct.list_head** %8, align 8
  %78 = call i32 @list_del_init(%struct.list_head* %77)
  %79 = load %struct.list_head*, %struct.list_head** %8, align 8
  %80 = bitcast %struct.list_head* %79 to %struct.bnx2fc_cmd*
  store %struct.bnx2fc_cmd* %80, %struct.bnx2fc_cmd** %7, align 8
  %81 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %12, align 8
  %84 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %85 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %6, align 8
  %86 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, %struct.bnx2fc_cmd_mgr* %85, i32 0, i32 2
  %87 = load %struct.bnx2fc_cmd**, %struct.bnx2fc_cmd*** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %87, i64 %88
  store %struct.bnx2fc_cmd* %84, %struct.bnx2fc_cmd** %89, align 8
  %90 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %91 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %90, i32 0, i32 1
  %92 = call i32 @atomic_inc(%struct.TYPE_6__* %91)
  %93 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %94 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %93, i32 0, i32 0
  %95 = call i32 @atomic_dec(i32* %94)
  %96 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %6, align 8
  %97 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, %struct.bnx2fc_cmd_mgr* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @spin_unlock_bh(i32* %101)
  %103 = call i32 (...) @put_cpu()
  %104 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %104, i32 0, i32 6
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.fcoe_port*, %struct.fcoe_port** %4, align 8
  %108 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %108, i32 0, i32 5
  store %struct.fcoe_port* %107, %struct.fcoe_port** %109, align 8
  %110 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %6, align 8
  %111 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %111, i32 0, i32 4
  store %struct.bnx2fc_cmd_mgr* %110, %struct.bnx2fc_cmd_mgr** %112, align 8
  %113 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.bnx2fc_cmd_mgr*, %struct.bnx2fc_cmd_mgr** %6, align 8
  %116 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, %struct.bnx2fc_cmd_mgr* %115, i32 0, i32 0
  %117 = load %struct.io_bdt**, %struct.io_bdt*** %116, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.io_bdt*, %struct.io_bdt** %117, i64 %118
  %120 = load %struct.io_bdt*, %struct.io_bdt** %119, align 8
  %121 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %121, i32 0, i32 2
  store %struct.io_bdt* %120, %struct.io_bdt** %122, align 8
  store %struct.io_bdt* %120, %struct.io_bdt** %9, align 8
  %123 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %124 = load %struct.io_bdt*, %struct.io_bdt** %9, align 8
  %125 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %124, i32 0, i32 0
  store %struct.bnx2fc_cmd* %123, %struct.bnx2fc_cmd** %125, align 8
  %126 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %126, i32 0, i32 1
  %128 = call i32 @kref_init(i32* %127)
  %129 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %7, align 8
  store %struct.bnx2fc_cmd* %129, %struct.bnx2fc_cmd** %2, align 8
  br label %130

130:                                              ; preds = %67, %58
  %131 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %2, align 8
  ret %struct.bnx2fc_cmd* %131
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @list_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @list_del_init(%struct.list_head*) #1

declare dso_local i32 @atomic_inc(%struct.TYPE_6__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
