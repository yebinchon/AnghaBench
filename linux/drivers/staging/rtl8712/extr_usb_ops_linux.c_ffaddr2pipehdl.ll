; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_ffaddr2pipehdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_ffaddr2pipehdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvobj_priv = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvobj_priv*, i32)* @ffaddr2pipehdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffaddr2pipehdl(%struct.dvobj_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.dvobj_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  store %struct.dvobj_priv* %0, %struct.dvobj_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %8 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %7, i32 0, i32 1
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %6, align 8
  %10 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 11
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %46 [
    i32 135, label %16
    i32 136, label %19
    i32 129, label %22
    i32 128, label %25
    i32 137, label %28
    i32 134, label %31
    i32 131, label %34
    i32 130, label %37
    i32 133, label %40
    i32 132, label %43
  ]

16:                                               ; preds = %14
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = call i32 @usb_sndbulkpipe(%struct.usb_device* %17, i32 7)
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %14
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = call i32 @usb_sndbulkpipe(%struct.usb_device* %20, i32 6)
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %14
  %23 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %24 = call i32 @usb_sndbulkpipe(%struct.usb_device* %23, i32 5)
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %14
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = call i32 @usb_sndbulkpipe(%struct.usb_device* %26, i32 4)
  store i32 %27, i32* %5, align 4
  br label %46

28:                                               ; preds = %14
  %29 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %30 = call i32 @usb_sndbulkpipe(%struct.usb_device* %29, i32 10)
  store i32 %30, i32* %5, align 4
  br label %46

31:                                               ; preds = %14
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = call i32 @usb_sndbulkpipe(%struct.usb_device* %32, i32 11)
  store i32 %33, i32* %5, align 4
  br label %46

34:                                               ; preds = %14
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = call i32 @usb_sndbulkpipe(%struct.usb_device* %35, i32 12)
  store i32 %36, i32* %5, align 4
  br label %46

37:                                               ; preds = %14
  %38 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %39 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %38, i32 3)
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %14
  %41 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %42 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %41, i32 9)
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %14
  %44 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %45 = call i32 @usb_sndbulkpipe(%struct.usb_device* %44, i32 13)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %14, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16
  br label %96

47:                                               ; preds = %2
  %48 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %49 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %72 [
    i32 135, label %54
    i32 136, label %57
    i32 129, label %60
    i32 128, label %63
    i32 130, label %66
    i32 133, label %66
    i32 132, label %69
    i32 137, label %69
    i32 134, label %69
    i32 131, label %69
  ]

54:                                               ; preds = %52
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = call i32 @usb_sndbulkpipe(%struct.usb_device* %55, i32 7)
  store i32 %56, i32* %5, align 4
  br label %72

57:                                               ; preds = %52
  %58 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %59 = call i32 @usb_sndbulkpipe(%struct.usb_device* %58, i32 6)
  store i32 %59, i32* %5, align 4
  br label %72

60:                                               ; preds = %52
  %61 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %62 = call i32 @usb_sndbulkpipe(%struct.usb_device* %61, i32 5)
  store i32 %62, i32* %5, align 4
  br label %72

63:                                               ; preds = %52
  %64 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %65 = call i32 @usb_sndbulkpipe(%struct.usb_device* %64, i32 4)
  store i32 %65, i32* %5, align 4
  br label %72

66:                                               ; preds = %52, %52
  %67 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %68 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %67, i32 3)
  store i32 %68, i32* %5, align 4
  br label %72

69:                                               ; preds = %52, %52, %52, %52
  %70 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %71 = call i32 @usb_sndbulkpipe(%struct.usb_device* %70, i32 13)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %52, %69, %66, %63, %60, %57, %54
  br label %95

73:                                               ; preds = %47
  %74 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %75 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  switch i32 %79, label %92 [
    i32 136, label %80
    i32 128, label %83
    i32 130, label %86
    i32 133, label %86
    i32 132, label %89
    i32 137, label %89
    i32 134, label %89
    i32 131, label %89
  ]

80:                                               ; preds = %78
  %81 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %82 = call i32 @usb_sndbulkpipe(%struct.usb_device* %81, i32 6)
  store i32 %82, i32* %5, align 4
  br label %92

83:                                               ; preds = %78
  %84 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %85 = call i32 @usb_sndbulkpipe(%struct.usb_device* %84, i32 4)
  store i32 %85, i32* %5, align 4
  br label %92

86:                                               ; preds = %78, %78
  %87 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %88 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %87, i32 3)
  store i32 %88, i32* %5, align 4
  br label %92

89:                                               ; preds = %78, %78, %78, %78
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = call i32 @usb_sndbulkpipe(%struct.usb_device* %90, i32 13)
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %78, %89, %86, %83, %80
  br label %94

93:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94, %72
  br label %96

96:                                               ; preds = %95, %46
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
