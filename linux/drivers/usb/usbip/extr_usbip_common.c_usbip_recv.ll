; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvec = type { i8*, i32 }
%struct.msghdr = type { i32, i32 }

@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@usbip_dbg_flag_xmit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%-10s:\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"interrupt  :\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"receiving....\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"received, osize %d ret %d size %zd total %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_recv(%struct.socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec, align 8
  %10 = alloca %struct.msghdr, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 0
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  %18 = load i32, i32* @MSG_NOSIGNAL, align 4
  store i32 %18, i32* %17, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = icmp ne %struct.socket* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %82

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %32 = load i32, i32* @READ, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @iov_iter_kvec(i32* %31, i32 %32, %struct.kvec* %9, i32 1, i32 %33)
  %35 = call i32 @usbip_dbg_xmit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %52, %30
  %37 = load i32, i32* @GFP_NOIO, align 4
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = load i32, i32* @MSG_WAITALL, align 4
  %44 = call i32 @sock_recvmsg(%struct.socket* %42, %struct.msghdr* %10, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %80

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48
  %53 = call i64 @msg_data_left(%struct.msghdr* %10)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %36, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @usbip_dbg_flag_xmit, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = call i32 (...) @in_interrupt()
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %68

66:                                               ; preds = %58
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @usbip_dump_buffer(i8* %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @msg_data_left(%struct.msghdr* %10)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %74, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %55
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %47
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %78, %27
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @usbip_dbg_xmit(i8*) #1

declare dso_local i32 @sock_recvmsg(%struct.socket*, %struct.msghdr*, i32) #1

declare dso_local i64 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @usbip_dump_buffer(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
