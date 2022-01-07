; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_transport_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_transport_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_transport = type { i32, i32, i32 }

@ft_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"transport %s already attached\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@FCOE_TRANSPORT_DEFAULT = common dso_local global i32 0, align 4
@fcoe_transports = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"attaching transport %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcoe_transport_attach(%struct.fcoe_transport* %0) #0 {
  %2 = alloca %struct.fcoe_transport*, align 8
  %3 = alloca i32, align 4
  store %struct.fcoe_transport* %0, %struct.fcoe_transport** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @mutex_lock(i32* @ft_mutex)
  %5 = load %struct.fcoe_transport*, %struct.fcoe_transport** %2, align 8
  %6 = getelementptr inbounds %struct.fcoe_transport, %struct.fcoe_transport* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.fcoe_transport*, %struct.fcoe_transport** %2, align 8
  %11 = getelementptr inbounds %struct.fcoe_transport, %struct.fcoe_transport* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @LIBFCOE_TRANSPORT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @EEXIST, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.fcoe_transport*, %struct.fcoe_transport** %2, align 8
  %18 = getelementptr inbounds %struct.fcoe_transport, %struct.fcoe_transport* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FCOE_TRANSPORT_DEFAULT, align 4
  %21 = call i64 @strcmp(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.fcoe_transport*, %struct.fcoe_transport** %2, align 8
  %25 = getelementptr inbounds %struct.fcoe_transport, %struct.fcoe_transport* %24, i32 0, i32 2
  %26 = call i32 @list_add(i32* %25, i32* @fcoe_transports)
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.fcoe_transport*, %struct.fcoe_transport** %2, align 8
  %29 = getelementptr inbounds %struct.fcoe_transport, %struct.fcoe_transport* %28, i32 0, i32 2
  %30 = call i32 @list_add_tail(i32* %29, i32* @fcoe_transports)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.fcoe_transport*, %struct.fcoe_transport** %2, align 8
  %33 = getelementptr inbounds %struct.fcoe_transport, %struct.fcoe_transport* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.fcoe_transport*, %struct.fcoe_transport** %2, align 8
  %35 = getelementptr inbounds %struct.fcoe_transport, %struct.fcoe_transport* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LIBFCOE_TRANSPORT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %9
  %39 = call i32 @mutex_unlock(i32* @ft_mutex)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @LIBFCOE_TRANSPORT_DBG(i8*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
