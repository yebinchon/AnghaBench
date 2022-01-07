; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_tcp_listen_for_all.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_tcp_listen_for_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.connection = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dlm_local_addr = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [54 x i8] c"TCP protocol can't handle multi-homed hosts, try SCTP\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Using TCP for communications\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tcp_listen_for_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_listen_for_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.socket* null, %struct.socket** %2, align 8
  %5 = load i32, i32* @GFP_NOFS, align 4
  %6 = call %struct.connection* @nodeid2con(i32 0, i32 %5)
  store %struct.connection* %6, %struct.connection** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.connection*, %struct.connection** %3, align 8
  %10 = icmp ne %struct.connection* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %41

14:                                               ; preds = %0
  %15 = load i32**, i32*** @dlm_local_addr, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = call i32 @log_print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %1, align 4
  br label %41

23:                                               ; preds = %14
  %24 = call i32 @log_print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = load i32**, i32*** @dlm_local_addr, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call %struct.socket* @tcp_create_listen_sock(%struct.connection* %25, i32* %28)
  store %struct.socket* %29, %struct.socket** %2, align 8
  %30 = load %struct.socket*, %struct.socket** %2, align 8
  %31 = icmp ne %struct.socket* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.socket*, %struct.socket** %2, align 8
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = call i32 @add_sock(%struct.socket* %33, %struct.connection* %34)
  store i32 0, i32* %4, align 4
  br label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @EADDRINUSE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %19, %11
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local %struct.connection* @nodeid2con(i32, i32) #1

declare dso_local i32 @log_print(i8*) #1

declare dso_local %struct.socket* @tcp_create_listen_sock(%struct.connection*, i32*) #1

declare dso_local i32 @add_sock(%struct.socket*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
