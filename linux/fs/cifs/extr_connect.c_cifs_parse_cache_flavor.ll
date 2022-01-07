; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_parse_cache_flavor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_parse_cache_flavor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@cifs_cacheflavor_tokens = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bad cache= option: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.smb_vol*)* @cifs_parse_cache_flavor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_parse_cache_flavor(i8* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %9 = load i32, i32* @MAX_OPT_ARGS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @cifs_cacheflavor_tokens, align 4
  %15 = call i32 @match_token(i8* %13, i32 %14, i32* %12)
  switch i32 %15, label %61 [
    i32 132, label %16
    i32 128, label %25
    i32 131, label %34
    i32 130, label %43
    i32 129, label %52
  ]

16:                                               ; preds = %2
  %17 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %18 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %20 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %22 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %21, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %24 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %23, i32 0, i32 3
  store i32 0, i32* %24, align 4
  br label %65

25:                                               ; preds = %2
  %26 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %27 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %29 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %31 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %33 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %32, i32 0, i32 3
  store i32 0, i32* %33, align 4
  br label %65

34:                                               ; preds = %2
  %35 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %36 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %38 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %40 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %39, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %42 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %41, i32 0, i32 3
  store i32 0, i32* %42, align 4
  br label %65

43:                                               ; preds = %2
  %44 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %45 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %47 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %49 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  %50 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %51 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  br label %65

52:                                               ; preds = %2
  %53 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %54 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %56 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %58 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %60 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  br label %65

61:                                               ; preds = %2
  %62 = load i32, i32* @VFS, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @cifs_dbg(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %63)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %66

65:                                               ; preds = %52, %43, %34, %25, %16
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @cifs_dbg(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
