; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_hdr_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_hdr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_cmd_req_hdr = type { i32, i32, i8*, i8* }

@BEISCSI_FW_MBX_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @be_cmd_hdr_prepare(%struct.be_cmd_req_hdr* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.be_cmd_req_hdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.be_cmd_req_hdr* %0, %struct.be_cmd_req_hdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i64, i64* %8, align 8
  %16 = sub i64 %15, 24
  %17 = call i32 @cpu_to_le32(i64 %16)
  %18 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @BEISCSI_FW_MBX_TIMEOUT, align 4
  %21 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
