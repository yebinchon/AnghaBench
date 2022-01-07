; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_state_unavailable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_state_unavailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32 }

@ASCQ_04H_ALUA_TG_PT_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i8*)* @core_alua_state_unavailable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_alua_state_unavailable(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  switch i32 %9, label %33 [
    i32 136, label %10
    i32 130, label %10
    i32 135, label %11
    i32 134, label %22
    i32 129, label %32
    i32 131, label %32
    i32 128, label %32
  ]

10:                                               ; preds = %2, %2
  store i32 0, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 31
  switch i32 %16, label %18 [
    i32 133, label %17
  ]

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %11
  %19 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %20 = load i32, i32* @ASCQ_04H_ALUA_TG_PT_UNAVAILABLE, align 4
  %21 = call i32 @set_ascq(%struct.se_cmd* %19, i32 %20)
  store i32 1, i32* %3, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  switch i32 %26, label %28 [
    i32 132, label %27
  ]

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %37

28:                                               ; preds = %22
  %29 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %30 = load i32, i32* @ASCQ_04H_ALUA_TG_PT_UNAVAILABLE, align 4
  %31 = call i32 @set_ascq(%struct.se_cmd* %29, i32 %30)
  store i32 1, i32* %3, align 4
  br label %37

32:                                               ; preds = %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %35 = load i32, i32* @ASCQ_04H_ALUA_TG_PT_UNAVAILABLE, align 4
  %36 = call i32 @set_ascq(%struct.se_cmd* %34, i32 %35)
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %32, %28, %27, %18, %17, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @set_ascq(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
