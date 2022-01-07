; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_parse_query_id_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_parse_query_id_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.create_context = type { i32 }
%struct.smb2_file_all_info = type { i32 }
%struct.create_on_disk_id = type { i32, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"parse query id context 0x%llx 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.create_context*, %struct.smb2_file_all_info*)* @parse_query_id_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_query_id_ctxt(%struct.create_context* %0, %struct.smb2_file_all_info* %1) #0 {
  %3 = alloca %struct.create_context*, align 8
  %4 = alloca %struct.smb2_file_all_info*, align 8
  %5 = alloca %struct.create_on_disk_id*, align 8
  store %struct.create_context* %0, %struct.create_context** %3, align 8
  store %struct.smb2_file_all_info* %1, %struct.smb2_file_all_info** %4, align 8
  %6 = load %struct.create_context*, %struct.create_context** %3, align 8
  %7 = bitcast %struct.create_context* %6 to %struct.create_on_disk_id*
  store %struct.create_on_disk_id* %7, %struct.create_on_disk_id** %5, align 8
  %8 = load i32, i32* @FYI, align 4
  %9 = load %struct.create_on_disk_id*, %struct.create_on_disk_id** %5, align 8
  %10 = getelementptr inbounds %struct.create_on_disk_id, %struct.create_on_disk_id* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.create_on_disk_id*, %struct.create_on_disk_id** %5, align 8
  %13 = getelementptr inbounds %struct.create_on_disk_id, %struct.create_on_disk_id* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cifs_dbg(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.create_on_disk_id*, %struct.create_on_disk_id** %5, align 8
  %17 = getelementptr inbounds %struct.create_on_disk_id, %struct.create_on_disk_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %4, align 8
  %20 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
