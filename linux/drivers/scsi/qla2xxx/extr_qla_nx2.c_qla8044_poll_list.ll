; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_poll_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_poll_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla8044_reset_entry_hdr = type { i64, i64 }
%struct.qla8044_entry = type { i32, i32 }
%struct.qla8044_poll = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla8044_reset_entry_hdr*)* @qla8044_poll_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla8044_poll_list(%struct.scsi_qla_host* %0, %struct.qla8044_reset_entry_hdr* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla8044_reset_entry_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qla8044_entry*, align 8
  %7 = alloca %struct.qla8044_poll*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla8044_reset_entry_hdr* %1, %struct.qla8044_reset_entry_hdr** %4, align 8
  %10 = load %struct.qla8044_reset_entry_hdr*, %struct.qla8044_reset_entry_hdr** %4, align 8
  %11 = bitcast %struct.qla8044_reset_entry_hdr* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 16
  %13 = bitcast i8* %12 to %struct.qla8044_poll*
  store %struct.qla8044_poll* %13, %struct.qla8044_poll** %7, align 8
  %14 = load %struct.qla8044_poll*, %struct.qla8044_poll** %7, align 8
  %15 = bitcast %struct.qla8044_poll* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 8
  %17 = bitcast i8* %16 to %struct.qla8044_entry*
  store %struct.qla8044_entry* %17, %struct.qla8044_entry** %6, align 8
  %18 = load %struct.qla8044_reset_entry_hdr*, %struct.qla8044_reset_entry_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, %struct.qla8044_reset_entry_hdr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.qla8044_reset_entry_hdr*, %struct.qla8044_reset_entry_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, %struct.qla8044_reset_entry_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = load %struct.qla8044_entry*, %struct.qla8044_entry** %6, align 8
  %33 = getelementptr inbounds %struct.qla8044_entry, %struct.qla8044_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.qla8044_poll*, %struct.qla8044_poll** %7, align 8
  %37 = getelementptr inbounds %struct.qla8044_poll, %struct.qla8044_poll* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qla8044_poll*, %struct.qla8044_poll** %7, align 8
  %40 = getelementptr inbounds %struct.qla8044_poll, %struct.qla8044_poll* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @qla8044_poll_reg(%struct.scsi_qla_host* %31, i32 %34, i64 %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %8, align 8
  %46 = load %struct.qla8044_entry*, %struct.qla8044_entry** %6, align 8
  %47 = getelementptr inbounds %struct.qla8044_entry, %struct.qla8044_entry* %46, i32 1
  store %struct.qla8044_entry* %47, %struct.qla8044_entry** %6, align 8
  br label %24

48:                                               ; preds = %24
  br label %92

49:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %86, %49
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.qla8044_reset_entry_hdr*, %struct.qla8044_reset_entry_hdr** %4, align 8
  %53 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, %struct.qla8044_reset_entry_hdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %61 = load %struct.qla8044_entry*, %struct.qla8044_entry** %6, align 8
  %62 = getelementptr inbounds %struct.qla8044_entry, %struct.qla8044_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.qla8044_poll*, %struct.qla8044_poll** %7, align 8
  %66 = getelementptr inbounds %struct.qla8044_poll, %struct.qla8044_poll* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.qla8044_poll*, %struct.qla8044_poll** %7, align 8
  %69 = getelementptr inbounds %struct.qla8044_poll, %struct.qla8044_poll* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @qla8044_poll_reg(%struct.scsi_qla_host* %60, i32 %63, i64 %64, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %59
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %75 = load %struct.qla8044_entry*, %struct.qla8044_entry** %6, align 8
  %76 = getelementptr inbounds %struct.qla8044_entry, %struct.qla8044_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host* %74, i32 %77, i64* %9)
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %80 = load %struct.qla8044_entry*, %struct.qla8044_entry** %6, align 8
  %81 = getelementptr inbounds %struct.qla8044_entry, %struct.qla8044_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host* %79, i32 %82, i64* %9)
  br label %84

84:                                               ; preds = %73, %59
  br label %85

85:                                               ; preds = %84, %56
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %8, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %8, align 8
  %89 = load %struct.qla8044_entry*, %struct.qla8044_entry** %6, align 8
  %90 = getelementptr inbounds %struct.qla8044_entry, %struct.qla8044_entry* %89, i32 1
  store %struct.qla8044_entry* %90, %struct.qla8044_entry** %6, align 8
  br label %50

91:                                               ; preds = %50
  br label %92

92:                                               ; preds = %91, %48
  ret void
}

declare dso_local i64 @qla8044_poll_reg(%struct.scsi_qla_host*, i32, i64, i32, i32) #1

declare dso_local i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
