; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_check_receive.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_check_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i8*, i32 }
%struct.TCP_Server_Info = type { i64 }
%struct.kvec = type { i8*, i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }

@u32 = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SMB signature verification returned error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_check_receive(%struct.mid_q_entry* %0, %struct.TCP_Server_Info* %1, i32 %2) #0 {
  %4 = alloca %struct.mid_q_entry*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.kvec], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb_rqst, align 8
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %12 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @get_rfc1002_length(i8* %13)
  %15 = add nsw i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %17 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @u32, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @min_t(i32 %19, i32 92, i32 %20)
  %22 = call i32 @dump_smb(i8* %18, i32 %21)
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %24 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %28 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %10, i32 0, i32 0
  store i32 2, i32* %28, align 8
  %29 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %10, i32 0, i32 1
  %30 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %8, i64 0, i64 0
  store %struct.kvec* %30, %struct.kvec** %29, align 8
  %31 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %32 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %8, i64 0, i64 0
  %35 = getelementptr inbounds %struct.kvec, %struct.kvec* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 16
  %36 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %8, i64 0, i64 0
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i32 0, i32 1
  store i32 4, i32* %37, align 8
  %38 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %39 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %8, i64 0, i64 1
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 16
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %44, 4
  %46 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %8, i64 0, i64 1
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %49 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %50 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @cifs_verify_signature(%struct.smb_rqst* %10, %struct.TCP_Server_Info* %48, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %27
  %56 = load i32, i32* @VFS, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @cifs_server_dbg(i32 %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %27
  br label %60

60:                                               ; preds = %59, %3
  %61 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %62 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @map_smb_to_linux_error(i8* %63, i32 %64)
  ret i32 %65
}

declare dso_local i32 @get_rfc1002_length(i8*) #1

declare dso_local i32 @dump_smb(i8*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @cifs_verify_signature(%struct.smb_rqst*, %struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i32) #1

declare dso_local i32 @map_smb_to_linux_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
