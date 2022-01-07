; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_key.c_vnt_key_init_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_key.c_vnt_key_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@MAX_KEY_TABLE = common dso_local global i32 0, align 4
@MESSAGE_TYPE_CLRKEYENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_key_init_table(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %6 = load i32, i32* @MAX_KEY_TABLE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MAX_KEY_TABLE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %9, i64 %17
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %10

22:                                               ; preds = %10
  %23 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %24 = load i32, i32* @MESSAGE_TYPE_CLRKEYENTRY, align 4
  %25 = call i32 @ARRAY_SIZE(i32* %9)
  %26 = call i32 @vnt_control_out(%struct.vnt_private* %23, i32 %24, i32 0, i32 0, i32 %25, i32* %9)
  %27 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %27)
  ret i32 %26
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
