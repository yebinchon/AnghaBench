; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_show_security.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_show_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cifs_ses = type { i32, i64, i32, i32* }

@Unspecified = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c",sec=none\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c",sec=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"lanman\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ntlmv2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ntlm\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"krb5,cruid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"ntlmssp\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.cifs_ses*)* @cifs_show_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_show_security(%struct.seq_file* %0, %struct.cifs_ses* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.cifs_ses*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.cifs_ses* %1, %struct.cifs_ses** %4, align 8
  %5 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %6 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @Unspecified, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %12 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @seq_puts(%struct.seq_file* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %10
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %23 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %44 [
    i32 131, label %25
    i32 129, label %28
    i32 130, label %31
    i32 132, label %34
    i32 128, label %41
  ]

25:                                               ; preds = %19
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 @seq_puts(%struct.seq_file* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %47

28:                                               ; preds = %19
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = call i32 @seq_puts(%struct.seq_file* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 @seq_puts(%struct.seq_file* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %47

34:                                               ; preds = %19
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %37 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %38)
  %40 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  br label %47

41:                                               ; preds = %19
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %47

44:                                               ; preds = %19
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = call i32 @seq_puts(%struct.seq_file* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41, %34, %31, %28, %25
  %48 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %49 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = call i32 @seq_puts(%struct.seq_file* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %55

55:                                               ; preds = %18, %52, %47
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
