; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbencrypt.c_smbhash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbencrypt.c_smbhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ctx = type { i32 }

@fips_enabled = common dso_local global i64 0, align 8
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"FIPS compliance enabled: DES not permitted\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DES_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @smbhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbhash(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.des_ctx, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %12 = call i32 @str_to_key(i8* %10, i8* %11)
  %13 = load i64, i64* @fips_enabled, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @VFS, align 4
  %17 = call i32 @cifs_dbg(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %3
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* @DES_KEY_SIZE, align 4
  %23 = call i32 @des_expand_key(%struct.des_ctx* %9, i8* %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @des_encrypt(%struct.des_ctx* %9, i8* %24, i8* %25)
  %27 = call i32 @memzero_explicit(%struct.des_ctx* %9, i32 4)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %15
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @str_to_key(i8*, i8*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @des_expand_key(%struct.des_ctx*, i8*, i32) #1

declare dso_local i32 @des_encrypt(%struct.des_ctx*, i8*, i8*) #1

declare dso_local i32 @memzero_explicit(%struct.des_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
