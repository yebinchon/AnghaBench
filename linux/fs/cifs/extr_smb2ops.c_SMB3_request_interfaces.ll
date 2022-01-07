; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_SMB3_request_interfaces.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_SMB3_request_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_ses* }
%struct.cifs_ses = type { i64, i32, i32, %struct.network_interface_info_ioctl_rsp* }
%struct.network_interface_info_ioctl_rsp = type { i32 }
%struct.cifs_server_iface = type opaque

@NO_FILE_ID = common dso_local global i32 0, align 4
@FSCTL_QUERY_NETWORK_INTERFACE_INFO = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"server does not support query network interfaces\0A\00", align 1
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"error %d on ioctl to get interface list\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*)* @SMB3_request_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SMB3_request_interfaces(i32 %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.network_interface_info_ioctl_rsp*, align 8
  %8 = alloca %struct.cifs_server_iface*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cifs_ses*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %4, align 8
  store i32 0, i32* %6, align 4
  store %struct.network_interface_info_ioctl_rsp* null, %struct.network_interface_info_ioctl_rsp** %7, align 8
  %11 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %12 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %11, i32 0, i32 0
  %13 = load %struct.cifs_ses*, %struct.cifs_ses** %12, align 8
  store %struct.cifs_ses* %13, %struct.cifs_ses** %10, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %16 = load i32, i32* @NO_FILE_ID, align 4
  %17 = load i32, i32* @NO_FILE_ID, align 4
  %18 = load i32, i32* @FSCTL_QUERY_NETWORK_INTERFACE_INFO, align 4
  %19 = load i32, i32* @CIFSMaxBufSize, align 4
  %20 = bitcast %struct.network_interface_info_ioctl_rsp** %7 to i8**
  %21 = call i32 @SMB2_ioctl(i32 %14, %struct.cifs_tcon* %15, i32 %16, i32 %17, i32 %18, i32 1, i32* null, i32 0, i32 %19, i8** %20, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @FYI, align 4
  %28 = call i32 @cifs_dbg(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %66

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @VFS, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cifs_tcon_dbg(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %66

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.network_interface_info_ioctl_rsp*, %struct.network_interface_info_ioctl_rsp** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = bitcast %struct.cifs_server_iface** %8 to %struct.network_interface_info_ioctl_rsp**
  %41 = call i32 @parse_server_interfaces(%struct.network_interface_info_ioctl_rsp* %38, i32 %39, %struct.network_interface_info_ioctl_rsp** %40, i64* %9)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %66

45:                                               ; preds = %37
  %46 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %47 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %50 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %49, i32 0, i32 3
  %51 = load %struct.network_interface_info_ioctl_rsp*, %struct.network_interface_info_ioctl_rsp** %50, align 8
  %52 = call i32 @kfree(%struct.network_interface_info_ioctl_rsp* %51)
  %53 = load %struct.cifs_server_iface*, %struct.cifs_server_iface** %8, align 8
  %54 = bitcast %struct.cifs_server_iface* %53 to %struct.network_interface_info_ioctl_rsp*
  %55 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %56 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %55, i32 0, i32 3
  store %struct.network_interface_info_ioctl_rsp* %54, %struct.network_interface_info_ioctl_rsp** %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %59 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @jiffies, align 4
  %61 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %62 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %64 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock(i32* %64)
  br label %66

66:                                               ; preds = %45, %44, %32, %26
  %67 = load %struct.network_interface_info_ioctl_rsp*, %struct.network_interface_info_ioctl_rsp** %7, align 8
  %68 = call i32 @kfree(%struct.network_interface_info_ioctl_rsp* %67)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i32*, i32, i32, i8**, i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @cifs_tcon_dbg(i32, i8*, i32) #1

declare dso_local i32 @parse_server_interfaces(%struct.network_interface_info_ioctl_rsp*, i32, %struct.network_interface_info_ioctl_rsp**, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.network_interface_info_ioctl_rsp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
