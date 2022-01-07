; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_print_dif_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_print_dif_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_prm = type { i32*, %struct.qla_tgt_cmd* }
%struct.qla_tgt_cmd = type { i32, %struct.TYPE_6__, i32, i32, i32, %struct.scsi_qla_host* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_qla_host = type { i32 }

@ql_dbg_tgt_dif = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"BE detected Guard TAG ERR: lba[0x%llx|%lld] len[0x%x] se_cmd=%p tag[%x]\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"BE detected APP TAG ERR: lba[0x%llx|%lld] len[0x%x] se_cmd=%p tag[%x]\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"BE detected REF TAG ERR: lba[0x%llx|%lld] len[0x%x] se_cmd=%p tag[%x]\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"BE detected Dif ERR: lba[%llx|%lld] len[%x] se_cmd=%p tag[%x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_tgt_prm*)* @qlt_print_dif_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_print_dif_err(%struct.qla_tgt_prm* %0) #0 {
  %2 = alloca %struct.qla_tgt_prm*, align 8
  %3 = alloca %struct.qla_tgt_cmd*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  store %struct.qla_tgt_prm* %0, %struct.qla_tgt_prm** %2, align 8
  %5 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %6 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %119

9:                                                ; preds = %1
  %10 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %11 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %119

16:                                               ; preds = %9
  %17 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %18 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %17, i32 0, i32 1
  %19 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %18, align 8
  store %struct.qla_tgt_cmd* %19, %struct.qla_tgt_cmd** %3, align 8
  %20 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %20, i32 0, i32 5
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %21, align 8
  store %struct.scsi_qla_host* %22, %struct.scsi_qla_host** %4, align 8
  %23 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %24 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 13
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %91 [
    i32 1, label %28
    i32 2, label %49
    i32 3, label %70
  ]

28:                                               ; preds = %16
  %29 = load i32, i32* @ql_dbg_tgt_dif, align 4
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %31 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %40, i32 0, i32 2
  %42 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ql_dbg(i32 %29, %struct.scsi_qla_host* %30, i32 57355, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32* %41, i32 %47)
  br label %112

49:                                               ; preds = %16
  %50 = load i32, i32* @ql_dbg_tgt_dif, align 4
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %52 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %62 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %61, i32 0, i32 2
  %63 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ql_dbg(i32 %50, %struct.scsi_qla_host* %51, i32 57356, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i32* %62, i32 %68)
  br label %112

70:                                               ; preds = %16
  %71 = load i32, i32* @ql_dbg_tgt_dif, align 4
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %73 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %74 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %77 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %80 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %83 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %82, i32 0, i32 2
  %84 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %85 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ql_dbg(i32 %71, %struct.scsi_qla_host* %72, i32 57359, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78, i32 %81, i32* %83, i32 %89)
  br label %112

91:                                               ; preds = %16
  %92 = load i32, i32* @ql_dbg_tgt_dif, align 4
  %93 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %94 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %95 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %98 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %101 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %104 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %103, i32 0, i32 2
  %105 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %106 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ql_dbg(i32 %92, %struct.scsi_qla_host* %93, i32 57360, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i32* %104, i32 %110)
  br label %112

112:                                              ; preds = %91, %70, %49, %28
  %113 = load i32, i32* @ql_dbg_tgt_dif, align 4
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %115 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %116 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ql_dump_buffer(i32 %113, %struct.scsi_qla_host* %114, i32 57361, i32 %117, i32 16)
  br label %119

119:                                              ; preds = %112, %9, %1
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ql_dump_buffer(i32, %struct.scsi_qla_host*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
