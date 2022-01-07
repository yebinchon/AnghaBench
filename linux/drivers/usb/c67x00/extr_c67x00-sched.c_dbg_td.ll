; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_dbg_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_dbg_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.c67x00_td = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"### %s at 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"urb:      0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"endpoint:   %4d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"pipeout:    %4d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ly_base_addr: 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"port_length:  0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"pid_ep:         0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"dev_addr:       0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"ctrl_reg:       0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"status:         0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"retry_cnt:      0x%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"residue:        0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"next_td_addr: 0x%04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"data: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_hcd*, %struct.c67x00_td*, i8*)* @dbg_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_td(%struct.c67x00_hcd* %0, %struct.c67x00_td* %1, i8* %2) #0 {
  %4 = alloca %struct.c67x00_hcd*, align 8
  %5 = alloca %struct.c67x00_td*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %4, align 8
  store %struct.c67x00_td* %1, %struct.c67x00_td** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %9 = call %struct.device* @c67x00_hcd_dev(%struct.c67x00_hcd* %8)
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.device*, %struct.device** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %13 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %14)
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %18 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %25 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_pipeendpoint(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %33 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_pipeout(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %41 = call i32 @td_ly_base_addr(%struct.c67x00_td* %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %47 = call i32 @td_port_length(%struct.c67x00_td* %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %53 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %60 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %63)
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %67 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %70)
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %74 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %77)
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %81 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %84)
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %88 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %91)
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %95 = call i32 @td_next_td_addr(%struct.c67x00_td* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %97)
  %99 = load %struct.device*, %struct.device** %7, align 8
  %100 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %101 = call i8* @td_length(%struct.c67x00_td* %100)
  %102 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %103 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %101, i32 %104)
  ret void
}

declare dso_local %struct.device* @c67x00_hcd_dev(%struct.c67x00_hcd*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @td_ly_base_addr(%struct.c67x00_td*) #1

declare dso_local i32 @td_port_length(%struct.c67x00_td*) #1

declare dso_local i32 @td_next_td_addr(%struct.c67x00_td*) #1

declare dso_local i8* @td_length(%struct.c67x00_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
