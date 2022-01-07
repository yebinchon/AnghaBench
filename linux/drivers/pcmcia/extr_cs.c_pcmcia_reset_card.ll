; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pcmcia_reset_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pcmcia_reset_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { {}*, {}* }

@.str = private unnamed_addr constant [18 x i8] c"resetting socket\0A\00", align 1
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't reset, not present\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SOCKET_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"can't reset, suspended\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't reset, is cardbus\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_reset_card(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 4
  %6 = call i32 @dev_dbg(i32* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SOCKET_PRESENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 4
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %89

23:                                               ; preds = %10
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SOCKET_SUSPEND, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %32 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 4
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %89

36:                                               ; preds = %23
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %38 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SOCKET_CARDBUS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %45 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %44, i32 0, i32 4
  %46 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %89

49:                                               ; preds = %36
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %51 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %56 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = bitcast {}** %58 to i32 (%struct.pcmcia_socket*)**
  %60 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %59, align 8
  %61 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %62 = call i32 %60(%struct.pcmcia_socket* %61)
  br label %63

63:                                               ; preds = %54, %49
  %64 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %65 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %64, i32 0, i32 3
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %68 = call i32 @socket_reset(%struct.pcmcia_socket* %67)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %70 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %69, i32 0, i32 3
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %63
  %75 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %76 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp ne %struct.TYPE_2__* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %81 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.pcmcia_socket*)**
  %85 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %84, align 8
  %86 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %87 = call i32 %85(%struct.pcmcia_socket* %86)
  br label %88

88:                                               ; preds = %79, %74, %63
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %43, %30, %17
  %90 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %91 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @socket_reset(%struct.pcmcia_socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
