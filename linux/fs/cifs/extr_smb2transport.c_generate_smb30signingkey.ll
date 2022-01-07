; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_generate_smb30signingkey.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_generate_smb30signingkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32 }
%struct.derivation_triplet = type { %struct.derivation, %struct.derivation, %struct.derivation }
%struct.derivation = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"SMB2AESCMAC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SmbSign\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SMB2AESCCM\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ServerIn \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ServerOut\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generate_smb30signingkey(%struct.cifs_ses* %0) #0 {
  %2 = alloca %struct.cifs_ses*, align 8
  %3 = alloca %struct.derivation_triplet, align 8
  %4 = alloca %struct.derivation*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %2, align 8
  %5 = getelementptr inbounds %struct.derivation_triplet, %struct.derivation_triplet* %3, i32 0, i32 2
  store %struct.derivation* %5, %struct.derivation** %4, align 8
  %6 = load %struct.derivation*, %struct.derivation** %4, align 8
  %7 = getelementptr inbounds %struct.derivation, %struct.derivation* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.derivation*, %struct.derivation** %4, align 8
  %10 = getelementptr inbounds %struct.derivation, %struct.derivation* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 12, i32* %11, align 8
  %12 = load %struct.derivation*, %struct.derivation** %4, align 8
  %13 = getelementptr inbounds %struct.derivation, %struct.derivation* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.derivation*, %struct.derivation** %4, align 8
  %16 = getelementptr inbounds %struct.derivation, %struct.derivation* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 8, i32* %17, align 8
  %18 = getelementptr inbounds %struct.derivation_triplet, %struct.derivation_triplet* %3, i32 0, i32 1
  store %struct.derivation* %18, %struct.derivation** %4, align 8
  %19 = load %struct.derivation*, %struct.derivation** %4, align 8
  %20 = getelementptr inbounds %struct.derivation, %struct.derivation* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.derivation*, %struct.derivation** %4, align 8
  %23 = getelementptr inbounds %struct.derivation, %struct.derivation* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 11, i32* %24, align 8
  %25 = load %struct.derivation*, %struct.derivation** %4, align 8
  %26 = getelementptr inbounds %struct.derivation, %struct.derivation* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.derivation*, %struct.derivation** %4, align 8
  %29 = getelementptr inbounds %struct.derivation, %struct.derivation* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 10, i32* %30, align 8
  %31 = getelementptr inbounds %struct.derivation_triplet, %struct.derivation_triplet* %3, i32 0, i32 0
  store %struct.derivation* %31, %struct.derivation** %4, align 8
  %32 = load %struct.derivation*, %struct.derivation** %4, align 8
  %33 = getelementptr inbounds %struct.derivation, %struct.derivation* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.derivation*, %struct.derivation** %4, align 8
  %36 = getelementptr inbounds %struct.derivation, %struct.derivation* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 11, i32* %37, align 8
  %38 = load %struct.derivation*, %struct.derivation** %4, align 8
  %39 = getelementptr inbounds %struct.derivation, %struct.derivation* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.derivation*, %struct.derivation** %4, align 8
  %42 = getelementptr inbounds %struct.derivation, %struct.derivation* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 10, i32* %43, align 8
  %44 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %45 = call i32 @generate_smb3signingkey(%struct.cifs_ses* %44, %struct.derivation_triplet* %3)
  ret i32 %45
}

declare dso_local i32 @generate_smb3signingkey(%struct.cifs_ses*, %struct.derivation_triplet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
