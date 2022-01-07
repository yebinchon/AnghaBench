; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_tag_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_tag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_tag = type { i16, i16, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_tag*, i16)* @tag_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tag_init(%struct.mvumi_tag* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.mvumi_tag*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.mvumi_tag* %0, %struct.mvumi_tag** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = load %struct.mvumi_tag*, %struct.mvumi_tag** %3, align 8
  %9 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = icmp ne i32 %7, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i16, i16* %4, align 2
  %16 = load %struct.mvumi_tag*, %struct.mvumi_tag** %3, align 8
  %17 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %16, i32 0, i32 1
  store i16 %15, i16* %17, align 2
  store i16 0, i16* %5, align 2
  br label %18

18:                                               ; preds = %38, %2
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = sub nsw i32 %26, 1
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %27, %29
  %31 = trunc i32 %30 to i16
  %32 = load %struct.mvumi_tag*, %struct.mvumi_tag** %3, align 8
  %33 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %32, i32 0, i32 2
  %34 = load i16*, i16** %33, align 8
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36
  store i16 %31, i16* %37, align 2
  br label %38

38:                                               ; preds = %24
  %39 = load i16, i16* %5, align 2
  %40 = add i16 %39, 1
  store i16 %40, i16* %5, align 2
  br label %18

41:                                               ; preds = %18
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
