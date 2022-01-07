; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_read_modify_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_read_modify_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla4_83xx_reset_entry_hdr = type { i64, i64 }
%struct.qla4_83xx_entry = type { i32, i32 }
%struct.qla4_83xx_rmw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla4_83xx_reset_entry_hdr*)* @qla4_83xx_read_modify_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_83xx_read_modify_write(%struct.scsi_qla_host* %0, %struct.qla4_83xx_reset_entry_hdr* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla4_83xx_reset_entry_hdr*, align 8
  %5 = alloca %struct.qla4_83xx_entry*, align 8
  %6 = alloca %struct.qla4_83xx_rmw*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla4_83xx_reset_entry_hdr* %1, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %8 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %9 = bitcast %struct.qla4_83xx_reset_entry_hdr* %8 to i8*
  %10 = getelementptr inbounds i8, i8* %9, i64 16
  %11 = bitcast i8* %10 to %struct.qla4_83xx_rmw*
  store %struct.qla4_83xx_rmw* %11, %struct.qla4_83xx_rmw** %6, align 8
  %12 = load %struct.qla4_83xx_rmw*, %struct.qla4_83xx_rmw** %6, align 8
  %13 = bitcast %struct.qla4_83xx_rmw* %12 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  %15 = bitcast i8* %14 to %struct.qla4_83xx_entry*
  store %struct.qla4_83xx_entry* %15, %struct.qla4_83xx_entry** %5, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %24 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %5, align 8
  %25 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %5, align 8
  %28 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qla4_83xx_rmw*, %struct.qla4_83xx_rmw** %6, align 8
  %31 = call i32 @qla4_83xx_rmw_crb_reg(%struct.scsi_qla_host* %23, i32 %26, i32 %29, %struct.qla4_83xx_rmw* %30)
  %32 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %33 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %38 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @udelay(i64 %39)
  br label %41

41:                                               ; preds = %36, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %7, align 8
  %45 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %5, align 8
  %46 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %45, i32 1
  store %struct.qla4_83xx_entry* %46, %struct.qla4_83xx_entry** %5, align 8
  br label %16

47:                                               ; preds = %16
  ret void
}

declare dso_local i32 @qla4_83xx_rmw_crb_reg(%struct.scsi_qla_host*, i32, i32, %struct.qla4_83xx_rmw*) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
