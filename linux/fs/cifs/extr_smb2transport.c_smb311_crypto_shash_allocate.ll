; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb311_crypto_shash_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb311_crypto_shash_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.cifs_secmech }
%struct.cifs_secmech = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"hmac(sha256)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb311_crypto_shash_allocate(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca %struct.cifs_secmech*, align 8
  %5 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %6 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %7 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %6, i32 0, i32 0
  store %struct.cifs_secmech* %7, %struct.cifs_secmech** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %9 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %8, i32 0, i32 1
  %10 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %11 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %10, i32 0, i32 0
  %12 = call i32 @cifs_alloc_hash(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %19 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %18, i32 0, i32 3
  %20 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %21 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %20, i32 0, i32 2
  %22 = call i32 @cifs_alloc_hash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %36

26:                                               ; preds = %17
  %27 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %27, i32 0, i32 5
  %29 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %30 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %29, i32 0, i32 4
  %31 = call i32 @cifs_alloc_hash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %28, i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %36

35:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %48

36:                                               ; preds = %34, %25
  %37 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %38 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %37, i32 0, i32 3
  %39 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %40 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %39, i32 0, i32 2
  %41 = call i32 @cifs_free_hash(i32* %38, i32* %40)
  %42 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %43 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %42, i32 0, i32 1
  %44 = load %struct.cifs_secmech*, %struct.cifs_secmech** %4, align 8
  %45 = getelementptr inbounds %struct.cifs_secmech, %struct.cifs_secmech* %44, i32 0, i32 0
  %46 = call i32 @cifs_free_hash(i32* %43, i32* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %36, %35, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @cifs_alloc_hash(i8*, i32*, i32*) #1

declare dso_local i32 @cifs_free_hash(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
