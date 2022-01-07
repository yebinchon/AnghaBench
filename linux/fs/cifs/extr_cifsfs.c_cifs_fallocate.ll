; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.file*, %struct.cifs_tcon*, i32, i32, i32)* }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i32, i32)* @cifs_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cifs_fallocate(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file* %13)
  store %struct.cifs_sb_info* %14, %struct.cifs_sb_info** %10, align 8
  %15 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %16 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %15)
  store %struct.cifs_tcon* %16, %struct.cifs_tcon** %11, align 8
  %17 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %18 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  store %struct.TCP_Server_Info* %21, %struct.TCP_Server_Info** %12, align 8
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %23 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64 (%struct.file*, %struct.cifs_tcon*, i32, i32, i32)*, i64 (%struct.file*, %struct.cifs_tcon*, i32, i32, i32)** %25, align 8
  %27 = icmp ne i64 (%struct.file*, %struct.cifs_tcon*, i32, i32, i32)* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64 (%struct.file*, %struct.cifs_tcon*, i32, i32, i32)*, i64 (%struct.file*, %struct.cifs_tcon*, i32, i32, i32)** %32, align 8
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 %33(%struct.file* %34, %struct.cifs_tcon* %35, i32 %36, i32 %37, i32 %38)
  store i64 %39, i64* %5, align 8
  br label %43

40:                                               ; preds = %4
  %41 = load i64, i64* @EOPNOTSUPP, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %40, %28
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file*) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
