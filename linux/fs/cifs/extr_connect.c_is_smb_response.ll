; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_is_smb_response.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_is_smb_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32 }
%struct.sockaddr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"RFC 1002 session keep alive\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"RFC 1002 positive session response\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"RFC 1002 negative session response\0A\00", align 1
@CIFS_PORT = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"RFC 1002 unknown response type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i8)* @is_smb_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_smb_response(%struct.TCP_Server_Info* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca i8, align 1
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %29 [
    i32 128, label %8
    i32 129, label %9
    i32 130, label %12
    i32 131, label %15
  ]

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %36

9:                                                ; preds = %2
  %10 = load i32, i32* @FYI, align 4
  %11 = call i32 @cifs_dbg(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %35

12:                                               ; preds = %2
  %13 = load i32, i32* @FYI, align 4
  %14 = call i32 @cifs_dbg(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %35

15:                                               ; preds = %2
  %16 = load i32, i32* @FYI, align 4
  %17 = call i32 @cifs_dbg(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @msleep(i32 1000)
  %19 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %20 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to %struct.sockaddr*
  %22 = load i32, i32* @CIFS_PORT, align 4
  %23 = call i32 @cifs_set_port(%struct.sockaddr* %21, i32 %22)
  %24 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %25 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %24)
  %26 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %27 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %26, i32 0, i32 0
  %28 = call i32 @wake_up(i32* %27)
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @VFS, align 4
  %31 = load i8, i8* %5, align 1
  %32 = call i32 @cifs_server_dbg(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %31)
  %33 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %34 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %33)
  br label %35

35:                                               ; preds = %29, %15, %12, %9
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cifs_set_port(%struct.sockaddr*, i32) #1

declare dso_local i32 @cifs_reconnect(%struct.TCP_Server_Info*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
