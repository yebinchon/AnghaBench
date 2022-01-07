; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_standard_receive3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_standard_receive3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i8*, i32, i32, i8*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mid_q_entry = type { i32 }

@CIFSMaxBufSize = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SMB response too long (%u bytes)\0A\00", align 1
@ECONNABORTED = common dso_local global i32 0, align 4
@MAX_CIFS_SMALL_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.mid_q_entry*)* @standard_receive3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @standard_receive3(%struct.TCP_Server_Info* %0, %struct.mid_q_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.mid_q_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.mid_q_entry* %1, %struct.mid_q_entry** %5, align 8
  %9 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %10 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %13 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CIFSMaxBufSize, align 4
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %18 = call i32 @MAX_HEADER_SIZE(%struct.TCP_Server_Info* %17)
  %19 = add i32 %16, %18
  %20 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %21 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %19, %24
  %26 = icmp ugt i32 %15, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load i32, i32* @VFS, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @cifs_server_dbg(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %32 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %31)
  %33 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %34 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %33, i32 0, i32 6
  %35 = call i32 @wake_up(i32* %34)
  %36 = load i32, i32* @ECONNABORTED, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %95

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MAX_CIFS_SMALL_BUFFER_SIZE, align 4
  %41 = sub nsw i32 %40, 4
  %42 = icmp ugt i32 %39, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %45 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %44, i32 0, i32 2
  store i32 1, i32* %45, align 4
  %46 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %47 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %51 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memcpy(i8* %48, i8* %49, i32 %52)
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %43, %38
  %58 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %61 = call i32 @HEADER_SIZE(%struct.TCP_Server_Info* %60)
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %67 = call i32 @HEADER_SIZE(%struct.TCP_Server_Info* %66)
  %68 = sub i32 %65, %67
  %69 = add i32 %68, 1
  %70 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %71 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %70, i32 0, i32 5
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %69, %74
  %76 = call i32 @cifs_read_from_socket(%struct.TCP_Server_Info* %58, i8* %64, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %95

81:                                               ; preds = %57
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %84 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %89 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dump_smb(i8* %87, i32 %90)
  %92 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %93 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %94 = call i32 @cifs_handle_standard(%struct.TCP_Server_Info* %92, %struct.mid_q_entry* %93)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %81, %79, %27
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @MAX_HEADER_SIZE(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i32) #1

declare dso_local i32 @cifs_reconnect(%struct.TCP_Server_Info*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cifs_read_from_socket(%struct.TCP_Server_Info*, i8*, i32) #1

declare dso_local i32 @HEADER_SIZE(%struct.TCP_Server_Info*) #1

declare dso_local i32 @dump_smb(i8*, i32) #1

declare dso_local i32 @cifs_handle_standard(%struct.TCP_Server_Info*, %struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
