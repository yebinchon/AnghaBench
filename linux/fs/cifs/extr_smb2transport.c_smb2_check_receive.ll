; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_check_receive.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_check_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32, i64, i32 }
%struct.TCP_Server_Info = type { i64 }
%struct.kvec = type { i8*, i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }

@u32 = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SMB signature verification returned error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_check_receive(%struct.mid_q_entry* %0, %struct.TCP_Server_Info* %1, i32 %2) #0 {
  %4 = alloca %struct.mid_q_entry*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.kvec], align 16
  %9 = alloca %struct.smb_rqst, align 8
  %10 = alloca i32, align 4
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %12 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i32 0, i32 1
  %16 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %8, i64 0, i64 0
  store %struct.kvec* %16, %struct.kvec** %15, align 8
  %17 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %18 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %8, i64 0, i64 0
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 16
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %27 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @u32, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @min_t(i32 %29, i32 80, i32 %30)
  %32 = call i32 @dump_smb(i64 %28, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ugt i32 %33, 24
  br i1 %34, label %35, label %55

35:                                               ; preds = %3
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %37 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %42 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %47 = call i32 @smb2_verify_signature(%struct.smb_rqst* %9, %struct.TCP_Server_Info* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @VFS, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @cifs_server_dbg(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %40, %35, %3
  %56 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %57 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @map_smb2_to_linux_error(i64 %58, i32 %59)
  ret i32 %60
}

declare dso_local i32 @dump_smb(i64, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @smb2_verify_signature(%struct.smb_rqst*, %struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i32) #1

declare dso_local i32 @map_smb2_to_linux_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
