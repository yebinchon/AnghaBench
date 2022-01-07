; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_card_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_card_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"no resources available, delaying card_add\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"validating mem resources failed, delaying card_add\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid CIS or invalid resources\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BIND_FN_ALL = common dso_local global i32 0, align 4
@CISTPL_LONGLINK_MFC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @pcmcia_card_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_card_add(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %9 = load i32, i32* @EAGAIN, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 1
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 2
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %84

27:                                               ; preds = %1
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %29 = call i64 @pcmcia_validate_mem(%struct.pcmcia_socket* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %33 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %32, i32 0, i32 1
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %84

40:                                               ; preds = %27
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %42 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %41, i32 0, i32 2
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %45 = call i32 @pccard_validate_cis(%struct.pcmcia_socket* %44, i32* %7)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %53 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %52, i32 0, i32 1
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %84

57:                                               ; preds = %48
  %58 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %59 = load i32, i32* @BIND_FN_ALL, align 4
  %60 = load i32, i32* @CISTPL_LONGLINK_MFC, align 4
  %61 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %58, i32 %59, i32 %60, %struct.TYPE_3__* %4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %67

66:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %70 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %79, %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pcmcia_device_add(%struct.pcmcia_socket* %76, i32 %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %71

82:                                               ; preds = %71
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %51, %31, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @pcmcia_validate_mem(%struct.pcmcia_socket*) #1

declare dso_local i32 @pccard_validate_cis(%struct.pcmcia_socket*, i32*) #1

declare dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pcmcia_device_add(%struct.pcmcia_socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
