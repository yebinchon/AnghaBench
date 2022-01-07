; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_bootrom.c_bootrom_es2_fixup_vid_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_bootrom.c_bootrom_es2_fixup_vid_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bootrom = type { %struct.gb_connection* }
%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.gb_interface* }
%struct.gb_interface = type { i32, i8*, i8* }
%struct.gb_bootrom_get_vid_pid_response = type { i32, i32 }

@GB_INTERFACE_QUIRK_NO_GMP_IDS = common dso_local global i32 0, align 4
@GB_BOOTROM_TYPE_GET_VID_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Bootrom get vid/pid operation failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Bootrom got vid (0x%x)/pid (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_bootrom*)* @bootrom_es2_fixup_vid_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootrom_es2_fixup_vid_pid(%struct.gb_bootrom* %0) #0 {
  %2 = alloca %struct.gb_bootrom*, align 8
  %3 = alloca %struct.gb_bootrom_get_vid_pid_response, align 4
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.gb_bootrom* %0, %struct.gb_bootrom** %2, align 8
  %7 = load %struct.gb_bootrom*, %struct.gb_bootrom** %2, align 8
  %8 = getelementptr inbounds %struct.gb_bootrom, %struct.gb_bootrom* %7, i32 0, i32 0
  %9 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  store %struct.gb_connection* %9, %struct.gb_connection** %4, align 8
  %10 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %11 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.gb_interface*, %struct.gb_interface** %13, align 8
  store %struct.gb_interface* %14, %struct.gb_interface** %5, align 8
  %15 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %16 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GB_INTERFACE_QUIRK_NO_GMP_IDS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %24 = load i32, i32* @GB_BOOTROM_TYPE_GET_VID_PID, align 4
  %25 = call i32 @gb_operation_sync(%struct.gb_connection* %23, i32 %24, i32* null, i32 0, %struct.gb_bootrom_get_vid_pid_response* %3, i32 8)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %30 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %57

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.gb_bootrom_get_vid_pid_response, %struct.gb_bootrom_get_vid_pid_response* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %40 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds %struct.gb_bootrom_get_vid_pid_response, %struct.gb_bootrom_get_vid_pid_response* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le32_to_cpu(i32 %42)
  %44 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %45 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %47 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %51 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %54 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %55)
  br label %57

57:                                               ; preds = %35, %28, %21
  ret void
}

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, i32*, i32, %struct.gb_bootrom_get_vid_pid_response*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
