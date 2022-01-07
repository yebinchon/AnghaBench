; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_move_smb2_info_to_cifs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_move_smb2_info_to_cifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64 }
%struct.smb2_file_all_info = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_smb2_info_to_cifs(%struct.TYPE_4__* %0, %struct.smb2_file_all_info* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.smb2_file_all_info*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.smb2_file_all_info* %1, %struct.smb2_file_all_info** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %4, align 8
  %7 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %4, align 8
  %8 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %7, i32 0, i32 2
  %9 = ptrtoint i64* %8 to i64
  %10 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %4, align 8
  %11 = ptrtoint %struct.smb2_file_all_info* %10 to i64
  %12 = sub i64 %9, %11
  %13 = call i32 @memcpy(%struct.TYPE_4__* %5, %struct.smb2_file_all_info* %6, i64 %12)
  %14 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %4, align 8
  %15 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %4, align 8
  %20 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %4, align 8
  %25 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.smb2_file_all_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
