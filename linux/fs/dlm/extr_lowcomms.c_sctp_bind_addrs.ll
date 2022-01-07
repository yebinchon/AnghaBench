; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_sctp_bind_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_sctp_bind_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@dlm_local_count = common dso_local global i32 0, align 4
@dlm_local_addr = common dso_local global i32* null, align 8
@SOL_SCTP = common dso_local global i32 0, align 4
@SCTP_SOCKOPT_BINDX_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Can't bind to %d addr number %d, %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i32)* @sctp_bind_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_bind_addrs(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @dlm_local_count, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load i32*, i32** @dlm_local_addr, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(%struct.sockaddr_storage* %5, i32 %18, i32 4)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @make_sockaddr(%struct.sockaddr_storage* %5, i32 %20, i32* %7)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %13
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @kernel_bind(i32 %27, %struct.sockaddr* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %40

31:                                               ; preds = %13
  %32 = load %struct.connection*, %struct.connection** %3, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SOL_SCTP, align 4
  %36 = load i32, i32* @SCTP_SOCKOPT_BINDX_ADD, align 4
  %37 = bitcast %struct.sockaddr_storage* %5 to i8*
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @kernel_setsockopt(i32 %34, i32 %35, i32 %36, i8* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %31, %24
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @log_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46, i32 %47)
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %9

53:                                               ; preds = %43, %9
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @make_sockaddr(%struct.sockaddr_storage*, i32, i32*) #1

declare dso_local i32 @kernel_bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @kernel_setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @log_print(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
