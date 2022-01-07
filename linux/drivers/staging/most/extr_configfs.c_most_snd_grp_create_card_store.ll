; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_most_snd_grp_create_card_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_most_snd_grp_create_card_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.most_snd_grp = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @most_snd_grp_create_card_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @most_snd_grp_create_card_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.most_snd_grp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.most_snd_grp* @to_most_snd_grp(%struct.config_item* %11)
  store %struct.most_snd_grp* %12, %struct.most_snd_grp** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @kstrtobool(i8* %13, i32* %10)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = call i32 @most_cfg_complete(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %35

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.most_snd_grp*, %struct.most_snd_grp** %8, align 8
  %32 = getelementptr inbounds %struct.most_snd_grp, %struct.most_snd_grp* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %26, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.most_snd_grp* @to_most_snd_grp(%struct.config_item*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @most_cfg_complete(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
