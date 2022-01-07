; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_receive_transform.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_receive_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i8*, i32, i32 }
%struct.mid_q_entry = type { i32 }
%struct.smb2_transform_hdr = type { i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Transform message is too small (%u)\0A\00", align 1
@ECONNABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Transform message is broken\0A\00", align 1
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.mid_q_entry**, i8**, i32*)* @smb3_receive_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb3_receive_transform(%struct.TCP_Server_Info* %0, %struct.mid_q_entry** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca %struct.mid_q_entry**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.smb2_transform_hdr*, align 8
  %13 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %6, align 8
  store %struct.mid_q_entry** %1, %struct.mid_q_entry*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %18 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.smb2_transform_hdr*
  store %struct.smb2_transform_hdr* %21, %struct.smb2_transform_hdr** %12, align 8
  %22 = load %struct.smb2_transform_hdr*, %struct.smb2_transform_hdr** %12, align 8
  %23 = getelementptr inbounds %struct.smb2_transform_hdr, %struct.smb2_transform_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = load i32, i32* @VFS, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i32, i8*, ...) @cifs_server_dbg(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %34 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %33)
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %36 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %35, i32 0, i32 2
  %37 = call i32 @wake_up(i32* %36)
  %38 = load i32, i32* @ECONNABORTED, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %76

40:                                               ; preds = %4
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load i32, i32* @VFS, align 4
  %49 = call i32 (i32, i8*, ...) @cifs_server_dbg(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %51 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %50)
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %53 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %52, i32 0, i32 2
  %54 = call i32 @wake_up(i32* %53)
  %55 = load i32, i32* @ECONNABORTED, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %76

57:                                               ; preds = %40
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @CIFSMaxBufSize, align 4
  %60 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %61 = call i32 @MAX_HEADER_SIZE(%struct.TCP_Server_Info* %60)
  %62 = add i32 %59, %61
  %63 = icmp ugt i32 %58, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %66 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %67 = getelementptr inbounds %struct.mid_q_entry*, %struct.mid_q_entry** %66, i64 0
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @receive_encrypted_read(%struct.TCP_Server_Info* %65, %struct.mid_q_entry** %67, i32* %68)
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %57
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %72 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %73 = load i8**, i8*** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @receive_encrypted_standard(%struct.TCP_Server_Info* %71, %struct.mid_q_entry** %72, i8** %73, i32* %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %70, %64, %47, %29
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, ...) #1

declare dso_local i32 @cifs_reconnect(%struct.TCP_Server_Info*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @MAX_HEADER_SIZE(%struct.TCP_Server_Info*) #1

declare dso_local i32 @receive_encrypted_read(%struct.TCP_Server_Info*, %struct.mid_q_entry**, i32*) #1

declare dso_local i32 @receive_encrypted_standard(%struct.TCP_Server_Info*, %struct.mid_q_entry**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
