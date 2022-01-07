; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_generate_smb311signingkey.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_generate_smb311signingkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32 }
%struct.derivation_triplet = type { %struct.derivation, %struct.derivation, %struct.derivation }
%struct.derivation = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"SMBSigningKey\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SMBC2SCipherKey\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SMBS2CCipherKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generate_smb311signingkey(%struct.cifs_ses* %0) #0 {
  %2 = alloca %struct.cifs_ses*, align 8
  %3 = alloca %struct.derivation_triplet, align 8
  %4 = alloca %struct.derivation*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %2, align 8
  %5 = getelementptr inbounds %struct.derivation_triplet, %struct.derivation_triplet* %3, i32 0, i32 2
  store %struct.derivation* %5, %struct.derivation** %4, align 8
  %6 = load %struct.derivation*, %struct.derivation** %4, align 8
  %7 = getelementptr inbounds %struct.derivation, %struct.derivation* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.derivation*, %struct.derivation** %4, align 8
  %10 = getelementptr inbounds %struct.derivation, %struct.derivation* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 14, i32* %11, align 8
  %12 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %13 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.derivation*, %struct.derivation** %4, align 8
  %16 = getelementptr inbounds %struct.derivation, %struct.derivation* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.derivation*, %struct.derivation** %4, align 8
  %19 = getelementptr inbounds %struct.derivation, %struct.derivation* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 64, i32* %20, align 8
  %21 = getelementptr inbounds %struct.derivation_triplet, %struct.derivation_triplet* %3, i32 0, i32 1
  store %struct.derivation* %21, %struct.derivation** %4, align 8
  %22 = load %struct.derivation*, %struct.derivation** %4, align 8
  %23 = getelementptr inbounds %struct.derivation, %struct.derivation* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.derivation*, %struct.derivation** %4, align 8
  %26 = getelementptr inbounds %struct.derivation, %struct.derivation* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 16, i32* %27, align 8
  %28 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %29 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.derivation*, %struct.derivation** %4, align 8
  %32 = getelementptr inbounds %struct.derivation, %struct.derivation* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.derivation*, %struct.derivation** %4, align 8
  %35 = getelementptr inbounds %struct.derivation, %struct.derivation* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 64, i32* %36, align 8
  %37 = getelementptr inbounds %struct.derivation_triplet, %struct.derivation_triplet* %3, i32 0, i32 0
  store %struct.derivation* %37, %struct.derivation** %4, align 8
  %38 = load %struct.derivation*, %struct.derivation** %4, align 8
  %39 = getelementptr inbounds %struct.derivation, %struct.derivation* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.derivation*, %struct.derivation** %4, align 8
  %42 = getelementptr inbounds %struct.derivation, %struct.derivation* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 16, i32* %43, align 8
  %44 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %45 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.derivation*, %struct.derivation** %4, align 8
  %48 = getelementptr inbounds %struct.derivation, %struct.derivation* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.derivation*, %struct.derivation** %4, align 8
  %51 = getelementptr inbounds %struct.derivation, %struct.derivation* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 64, i32* %52, align 8
  %53 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %54 = call i32 @generate_smb3signingkey(%struct.cifs_ses* %53, %struct.derivation_triplet* %3)
  ret i32 %54
}

declare dso_local i32 @generate_smb3signingkey(%struct.cifs_ses*, %struct.derivation_triplet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
