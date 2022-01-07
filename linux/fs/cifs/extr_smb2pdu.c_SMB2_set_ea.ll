; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_set_ea.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_set_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.smb2_file_full_ea_info = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@FILE_FULL_EA_INFORMATION = common dso_local global i32 0, align 4
@SMB2_O_INFO_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_set_ea(i32 %0, %struct.cifs_tcon* %1, i32 %2, i32 %3, %struct.smb2_file_full_ea_info* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.smb2_file_full_ea_info*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.smb2_file_full_ea_info* %4, %struct.smb2_file_full_ea_info** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FILE_FULL_EA_INFORMATION, align 4
  %21 = load i32, i32* @SMB2_O_INFO_FILE, align 4
  %22 = bitcast %struct.smb2_file_full_ea_info** %11 to i8**
  %23 = call i32 @send_set_info(i32 %13, %struct.cifs_tcon* %14, i32 %15, i32 %16, i32 %19, i32 %20, i32 %21, i32 0, i32 1, i8** %22, i32* %12)
  ret i32 %23
}

declare dso_local i32 @send_set_info(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i32, i32, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
