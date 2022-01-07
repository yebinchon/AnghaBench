; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_mark_entry_skipped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_mark_entry_skipped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32 }
%struct.qla8xxx_minidump_entry_hdr = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@QLA8XXX_DBG_SKIPPED_FLAG = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"scsi(%ld): Skipping entry[%d]: ETYPE[0x%x]-ELEVEL[0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla8xxx_minidump_entry_hdr*, i32)* @qla4_8xxx_mark_entry_skipped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_8xxx_mark_entry_skipped(%struct.scsi_qla_host* %0, %struct.qla8xxx_minidump_entry_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.qla8xxx_minidump_entry_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.qla8xxx_minidump_entry_hdr* %1, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @QLA8XXX_DBG_SKIPPED_FLAG, align 4
  %8 = load %struct.qla8xxx_minidump_entry_hdr*, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  %9 = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, %struct.qla8xxx_minidump_entry_hdr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %7
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.qla8xxx_minidump_entry_hdr*, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, %struct.qla8xxx_minidump_entry_hdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qla8xxx_minidump_entry_hdr*, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, %struct.qla8xxx_minidump_entry_hdr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ql4_printk(i32 %13, %struct.scsi_qla_host* %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %21, i32 %25)
  %27 = call i32 @DEBUG2(i32 %26)
  %28 = load %struct.qla8xxx_minidump_entry_hdr*, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, %struct.qla8xxx_minidump_entry_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  ret void
}

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
