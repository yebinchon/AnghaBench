; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_xdr_dump_bad.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_xdr_dump_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"AFS XDR: Bad status record\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%03x: %08x %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"0x50: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @xdr_dump_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_dump_bad(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 80
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @memcpy(i32* %10, i32* %11, i32 16)
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  store i32* %14, i32** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = call i32 @ntohl(i32 %17)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ntohl(i32 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohl(i32 %26)
  %28 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %9
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 16
  store i32 %31, i32* %4, align 4
  br label %6

32:                                               ; preds = %6
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @memcpy(i32* %33, i32* %34, i32 4)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = call i32 @ntohl(i32 %37)
  %39 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
