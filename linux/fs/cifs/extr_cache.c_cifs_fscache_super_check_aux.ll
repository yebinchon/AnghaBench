; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cache.c_cifs_fscache_super_check_aux.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cache.c_cifs_fscache_super_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fscache_super_auxdata = type { i32 }
%struct.cifs_tcon = type { i32 }

@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @cifs_fscache_super_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_fscache_super_check_aux(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_fscache_super_auxdata, align 4
  %11 = alloca %struct.cifs_tcon*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cifs_tcon*
  store %struct.cifs_tcon* %13, %struct.cifs_tcon** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %18, i32* %5, align 4
  br label %33

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.cifs_fscache_super_auxdata* %10, i32 0, i32 4)
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %22 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.cifs_fscache_super_auxdata, %struct.cifs_fscache_super_auxdata* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @memcmp(i8* %25, %struct.cifs_fscache_super_auxdata* %10, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.cifs_fscache_super_auxdata*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, %struct.cifs_fscache_super_auxdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
