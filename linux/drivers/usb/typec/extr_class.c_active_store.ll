; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_active_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_active_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.typec_altmode = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 (%struct.typec_altmode*, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.altmode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"port has the mode disabled\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @active_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @active_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.typec_altmode*, align 8
  %11 = alloca %struct.altmode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.typec_altmode* @to_typec_altmode(%struct.device* %14)
  store %struct.typec_altmode* %15, %struct.typec_altmode** %10, align 8
  %16 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %17 = call %struct.altmode* @to_altmode(%struct.typec_altmode* %16)
  store %struct.altmode* %17, %struct.altmode** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtobool(i8* %18, i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %118

24:                                               ; preds = %4
  %25 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %26 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %118

33:                                               ; preds = %24
  %34 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %35 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @is_typec_port(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %33
  %41 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @typec_altmode_update_active(%struct.typec_altmode* %41, i32 %42)
  %44 = load %struct.altmode*, %struct.altmode** %11, align 8
  %45 = getelementptr inbounds %struct.altmode, %struct.altmode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %48
  %52 = load %struct.altmode*, %struct.altmode** %11, align 8
  %53 = getelementptr inbounds %struct.altmode, %struct.altmode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.altmode*, %struct.altmode** %11, align 8
  %61 = getelementptr inbounds %struct.altmode, %struct.altmode* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @typec_altmode_exit(%struct.TYPE_8__* %63)
  br label %65

65:                                               ; preds = %59, %51, %48, %40
  br label %89

66:                                               ; preds = %33
  %67 = load %struct.altmode*, %struct.altmode** %11, align 8
  %68 = getelementptr inbounds %struct.altmode, %struct.altmode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load %struct.altmode*, %struct.altmode** %11, align 8
  %76 = getelementptr inbounds %struct.altmode, %struct.altmode* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %74
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call i32 @dev_warn(%struct.device* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %118

87:                                               ; preds = %74, %71
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88, %65
  %90 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %91 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %115

94:                                               ; preds = %89
  %95 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %96 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32 (%struct.typec_altmode*, i32)*, i32 (%struct.typec_altmode*, i32)** %98, align 8
  %100 = icmp ne i32 (%struct.typec_altmode*, i32)* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %94
  %102 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %103 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32 (%struct.typec_altmode*, i32)*, i32 (%struct.typec_altmode*, i32)** %105, align 8
  %107 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 %106(%struct.typec_altmode* %107, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %5, align 4
  br label %118

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %94, %89
  %116 = load i64, i64* %9, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %112, %82, %30, %22
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.typec_altmode* @to_typec_altmode(%struct.device*) #1

declare dso_local %struct.altmode* @to_altmode(%struct.typec_altmode*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i64 @is_typec_port(i32) #1

declare dso_local i32 @typec_altmode_update_active(%struct.typec_altmode*, i32) #1

declare dso_local i32 @typec_altmode_exit(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
