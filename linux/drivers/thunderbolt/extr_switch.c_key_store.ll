; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_key_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_key_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tb_switch = type { %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@TB_SWITCH_KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @key_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @key_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tb_switch*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.tb_switch* @tb_to_switch(%struct.device* %16)
  store %struct.tb_switch* %17, %struct.tb_switch** %10, align 8
  %18 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %37

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = mul nuw i64 4, %19
  %30 = trunc i64 %29 to i32
  %31 = call i64 @hex2bin(i32* %21, i8* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %87

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %39 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mutex_trylock(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = call i64 (...) @restart_syscall()
  store i64 %45, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %87

46:                                               ; preds = %37
  %47 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %48 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* @EBUSY, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %13, align 8
  br label %80

54:                                               ; preds = %46
  %55 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %56 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %63 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %79

64:                                               ; preds = %54
  %65 = mul nuw i64 4, %19
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32* @kmemdup(i32* %21, i32 %66, i32 %67)
  %69 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %70 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %72 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  %76 = load i64, i64* @ENOMEM, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %75, %64
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %51
  %81 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %82 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* %13, align 8
  store i64 %86, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %87

87:                                               ; preds = %80, %44, %33
  %88 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local %struct.tb_switch* @tb_to_switch(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @hex2bin(i32*, i8*, i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i64 @restart_syscall(...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
