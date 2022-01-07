; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-smm.c_test_wsmt_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-smm.c_test_wsmt_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32, i32 }
%struct.calling_interface_token = type { i32 }

@WSMT_EN_TOKEN = common dso_local global i32 0, align 4
@CLASS_TOKEN_READ = common dso_local global i32 0, align 4
@buffer = common dso_local global %struct.TYPE_4__* null, align 8
@SELECT_TOKEN_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_wsmt_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_wsmt_enabled() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.calling_interface_token*, align 8
  %3 = load i32, i32* @WSMT_EN_TOKEN, align 4
  %4 = call %struct.calling_interface_token* @dell_smbios_find_token(i32 %3)
  store %struct.calling_interface_token* %4, %struct.calling_interface_token** %2, align 8
  %5 = load %struct.calling_interface_token*, %struct.calling_interface_token** %2, align 8
  %6 = icmp ne %struct.calling_interface_token* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %38

8:                                                ; preds = %0
  %9 = load i32, i32* @CLASS_TOKEN_READ, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buffer, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SELECT_TOKEN_STD, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buffer, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buffer, align 8
  %16 = call i32 @memset(%struct.TYPE_4__* %15, i32 0, i32 4)
  %17 = load %struct.calling_interface_token*, %struct.calling_interface_token** %2, align 8
  %18 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buffer, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buffer, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 99, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buffer, align 8
  %29 = call i32 @dell_smbios_smm_call(%struct.TYPE_4__* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buffer, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 99
  br i1 %35, label %36, label %37

36:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %38

37:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %36, %7
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local %struct.calling_interface_token* @dell_smbios_find_token(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dell_smbios_smm_call(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
