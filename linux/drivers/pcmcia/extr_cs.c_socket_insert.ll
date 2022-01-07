; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [8 x i8] c"insert\0A\00", align 1
@SOCKET_INUSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@setup_delay = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"pccard: %s card inserted into slot %d\0A\00", align 1
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CardBus\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PCMCIA\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"insert done\0A\00", align 1
@SOCKET_CARDBUS_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_insert(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %6 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 3
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SOCKET_INUSE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %89

23:                                               ; preds = %1
  %24 = load i32, i32* @SOCKET_INUSE, align 4
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %30 = load i32, i32* @setup_delay, align 4
  %31 = call i32 @socket_setup(%struct.pcmcia_socket* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %23
  %35 = load i32, i32* @SOCKET_PRESENT, align 4
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %41 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %40, i32 0, i32 3
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %43 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SOCKET_CARDBUS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %51 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_notice(i32* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %52)
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %54, i32 0, i32 3
  %56 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %61 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SOCKET_CARDBUS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %34
  %67 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %68 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %73 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = bitcast {}** %75 to i32 (%struct.pcmcia_socket*)**
  %77 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %76, align 8
  %78 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %79 = call i32 %77(%struct.pcmcia_socket* %78)
  br label %80

80:                                               ; preds = %71, %66, %34
  br label %87

81:                                               ; preds = %23
  %82 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %83 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %86 = call i32 @socket_shutdown(%struct.pcmcia_socket* %85)
  br label %87

87:                                               ; preds = %81, %80
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %17
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @socket_setup(%struct.pcmcia_socket*, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, i8*, i32) #1

declare dso_local i32 @socket_shutdown(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
