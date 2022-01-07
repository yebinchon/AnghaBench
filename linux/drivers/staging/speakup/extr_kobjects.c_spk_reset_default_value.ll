; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_spk_reset_default_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_spk_reset_default_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_var_header = type { i32 }

@synth = common dso_local global i64 0, align 8
@E_NEW_DEFAULT = common dso_local global i32 0, align 4
@E_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s reset to default value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @spk_reset_default_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spk_reset_default_value(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_var_header*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @synth, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.st_var_header* @spk_var_header_by_name(i8* %14)
  store %struct.st_var_header* %15, %struct.st_var_header** %7, align 8
  %16 = load %struct.st_var_header*, %struct.st_var_header** %7, align 8
  %17 = icmp ne %struct.st_var_header* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.st_var_header*, %struct.st_var_header** %7, align 8
  %25 = load i32, i32* @E_NEW_DEFAULT, align 4
  %26 = call i32 @spk_set_num_var(i32 %23, %struct.st_var_header* %24, i32 %25)
  %27 = load %struct.st_var_header*, %struct.st_var_header** %7, align 8
  %28 = load i32, i32* @E_DEFAULT, align 4
  %29 = call i32 @spk_set_num_var(i32 0, %struct.st_var_header* %27, i32 %28)
  %30 = load %struct.st_var_header*, %struct.st_var_header** %7, align 8
  %31 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %18, %13
  br label %35

35:                                               ; preds = %34, %10, %3
  ret void
}

declare dso_local %struct.st_var_header* @spk_var_header_by_name(i8*) #1

declare dso_local i32 @spk_set_num_var(i32, %struct.st_var_header*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
