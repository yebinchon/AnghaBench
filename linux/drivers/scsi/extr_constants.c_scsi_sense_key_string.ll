; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_constants.c_scsi_sense_key_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_constants.c_scsi_sense_key_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snstext = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scsi_sense_key_string(i8 zeroext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8**, i8*** @snstext, align 8
  %7 = call zeroext i8 @ARRAY_SIZE(i8** %6)
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i8**, i8*** @snstext, align 8
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  br label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

declare dso_local zeroext i8 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
