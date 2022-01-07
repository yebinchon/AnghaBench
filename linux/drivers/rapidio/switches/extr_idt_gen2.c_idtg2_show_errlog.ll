; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_show_errlog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_show_errlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rio_dev = type { i32 }

@IDT_ERR_RD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @idtg2_show_errlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtg2_show_errlog(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.rio_dev* @to_rio_dev(%struct.device* %10)
  store %struct.rio_dev* %11, %struct.rio_dev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %39, %3
  %13 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %14 = load i32, i32* @IDT_ERR_RD, align 4
  %15 = call i32 @rio_read_config_32(%struct.rio_dev* %13, i32 %14, i32* %9)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %40

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @snprintf(i8* %26, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sub nsw i32 %35, 10
  %37 = icmp sge i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %40

39:                                               ; preds = %22
  br label %12

40:                                               ; preds = %38, %21, %12
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local %struct.rio_dev* @to_rio_dev(%struct.device*) #1

declare dso_local i32 @rio_read_config_32(%struct.rio_dev*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
