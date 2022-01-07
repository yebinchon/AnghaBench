; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISR_FETALERR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [22 x i8] c"Hardware fatal error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*, i16)* @device_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_error(%struct.vnt_private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i16, align 2
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* @ISR_FETALERR, align 2
  %8 = zext i16 %7 to i32
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %13 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %18 = call i32 @MACbShutdown(%struct.vnt_private* %17)
  br label %19

19:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @MACbShutdown(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
