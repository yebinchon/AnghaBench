; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.keyspan_port_private = type { %struct.keyspan_port_private**, %struct.keyspan_port_private**, %struct.keyspan_port_private*, %struct.keyspan_port_private*, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @keyspan_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_port_remove(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.keyspan_port_private*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = call %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %5)
  store %struct.keyspan_port_private* %6, %struct.keyspan_port_private** %3, align 8
  %7 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %8 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_kill_urb(i32 %9)
  %11 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %12 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @usb_kill_urb(i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %20 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_kill_urb(i32 %25)
  %27 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %28 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_kill_urb(i32 %33)
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %40 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_free_urb(i32 %41)
  %43 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %44 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @usb_free_urb(i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %67, %38
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %52 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_free_urb(i32 %57)
  %59 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %60 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_free_urb(i32 %65)
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %47

70:                                               ; preds = %47
  %71 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %72 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %71, i32 0, i32 3
  %73 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %72, align 8
  %74 = call i32 @kfree(%struct.keyspan_port_private* %73)
  %75 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %76 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %75, i32 0, i32 2
  %77 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %76, align 8
  %78 = call i32 @kfree(%struct.keyspan_port_private* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %95, %70
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %82 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %81, i32 0, i32 1
  %83 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %82, align 8
  %84 = call i32 @ARRAY_SIZE(%struct.keyspan_port_private** %83)
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %88 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %87, i32 0, i32 1
  %89 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %89, i64 %91
  %93 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %92, align 8
  %94 = call i32 @kfree(%struct.keyspan_port_private* %93)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %79

98:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %115, %98
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %102 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %101, i32 0, i32 0
  %103 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %102, align 8
  %104 = call i32 @ARRAY_SIZE(%struct.keyspan_port_private** %103)
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %108 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %107, i32 0, i32 0
  %109 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %109, i64 %111
  %113 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %112, align 8
  %114 = call i32 @kfree(%struct.keyspan_port_private* %113)
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %99

118:                                              ; preds = %99
  %119 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %3, align 8
  %120 = call i32 @kfree(%struct.keyspan_port_private* %119)
  ret i32 0
}

declare dso_local %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.keyspan_port_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.keyspan_port_private**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
