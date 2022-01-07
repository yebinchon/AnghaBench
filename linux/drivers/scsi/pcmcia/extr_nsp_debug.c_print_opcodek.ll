; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_debug.c_print_opcodek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_debug.c_print_opcodek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commands = common dso_local global i8*** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s[%02x] \00", align 1
@reserved = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%s(notext)[%02x] \00", align 1
@unknown = common dso_local global i8* null, align 8
@vendor = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @print_opcodek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_opcodek(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8**, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8***, i8**** @commands, align 8
  %5 = load i8, i8* %2, align 1
  %6 = call i64 @group(i8 zeroext %5)
  %7 = getelementptr inbounds i8**, i8*** %4, i64 %6
  %8 = load i8**, i8*** %7, align 8
  store i8** %8, i8*** %3, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = ptrtoint i8** %9 to i64
  switch i64 %10, label %23 [
    i64 129, label %11
    i64 130, label %15
    i64 128, label %19
  ]

11:                                               ; preds = %1
  %12 = load i8*, i8** @reserved, align 8
  %13 = load i8, i8* %2, align 1
  %14 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %12, i8 zeroext %13)
  br label %48

15:                                               ; preds = %1
  %16 = load i8*, i8** @unknown, align 8
  %17 = load i8, i8* %2, align 1
  %18 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8 zeroext %17)
  br label %48

19:                                               ; preds = %1
  %20 = load i8*, i8** @vendor, align 8
  %21 = load i8, i8* %2, align 1
  %22 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20, i8 zeroext %21)
  br label %48

23:                                               ; preds = %1
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8, i8* %2, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 31
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %24, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @unknown, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = load i8**, i8*** %3, align 8
  %35 = load i8, i8* %2, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 31
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %34, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %2, align 1
  %42 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %40, i8 zeroext %41)
  br label %47

43:                                               ; preds = %23
  %44 = load i8*, i8** @unknown, align 8
  %45 = load i8, i8* %2, align 1
  %46 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %44, i8 zeroext %45)
  br label %47

47:                                               ; preds = %43, %33
  br label %48

48:                                               ; preds = %47, %19, %15, %11
  ret void
}

declare dso_local i64 @group(i8 zeroext) #1

declare dso_local i32 @printk(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
