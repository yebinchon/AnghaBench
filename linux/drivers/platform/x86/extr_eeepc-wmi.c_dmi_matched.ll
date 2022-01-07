; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-wmi.c_dmi_matched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-wmi.c_dmi_matched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ET2012\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_system_id*)* @dmi_matched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmi_matched(%struct.dmi_system_id* %0) #0 {
  %2 = alloca %struct.dmi_system_id*, align 8
  %3 = alloca i8*, align 8
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %2, align 8
  %4 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %5 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* @quirks, align 4
  %7 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %8 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @et2012_quirks()
  br label %22

22:                                               ; preds = %20, %1
  ret i32 1
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @et2012_quirks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
