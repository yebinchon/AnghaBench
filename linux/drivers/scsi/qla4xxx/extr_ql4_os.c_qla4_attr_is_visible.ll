; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @qla4_attr_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_attr_is_visible(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %32 [
    i32 262, label %7
    i32 186, label %12
    i32 237, label %17
    i32 256, label %22
    i32 280, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %11 [
    i32 261, label %9
    i32 259, label %9
    i32 260, label %9
    i32 257, label %9
    i32 258, label %9
  ]

9:                                                ; preds = %7, %7, %7, %7, %7
  %10 = load i32, i32* @S_IRUGO, align 4
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %16 [
    i32 144, label %14
    i32 143, label %14
    i32 180, label %14
    i32 179, label %14
    i32 139, label %14
    i32 131, label %14
    i32 140, label %14
    i32 152, label %14
    i32 151, label %14
    i32 166, label %14
    i32 150, label %14
    i32 148, label %14
    i32 164, label %14
    i32 181, label %14
    i32 182, label %14
    i32 129, label %14
    i32 147, label %14
    i32 128, label %14
    i32 146, label %14
    i32 185, label %14
    i32 169, label %14
    i32 142, label %14
    i32 183, label %14
    i32 172, label %14
    i32 184, label %14
    i32 173, label %14
    i32 174, label %14
    i32 175, label %14
    i32 165, label %14
    i32 178, label %14
    i32 162, label %14
    i32 163, label %14
    i32 145, label %14
    i32 177, label %14
    i32 149, label %14
    i32 134, label %14
    i32 133, label %14
    i32 138, label %14
    i32 136, label %14
    i32 135, label %14
    i32 132, label %14
    i32 137, label %14
    i32 158, label %14
    i32 161, label %14
    i32 159, label %14
    i32 160, label %14
    i32 156, label %14
    i32 155, label %14
    i32 153, label %14
    i32 157, label %14
    i32 130, label %14
    i32 176, label %14
    i32 168, label %14
    i32 141, label %14
    i32 167, label %14
    i32 171, label %14
    i32 170, label %14
    i32 154, label %14
  ]

14:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %15 = load i32, i32* @S_IRUGO, align 4
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %21 [
    i32 232, label %19
    i32 218, label %19
    i32 220, label %19
    i32 231, label %19
    i32 234, label %19
    i32 208, label %19
    i32 214, label %19
    i32 201, label %19
    i32 213, label %19
    i32 207, label %19
    i32 188, label %19
    i32 187, label %19
    i32 189, label %19
    i32 197, label %19
    i32 196, label %19
    i32 233, label %19
    i32 206, label %19
    i32 200, label %19
    i32 235, label %19
    i32 194, label %19
    i32 190, label %19
    i32 191, label %19
    i32 193, label %19
    i32 192, label %19
    i32 236, label %19
    i32 228, label %19
    i32 225, label %19
    i32 216, label %19
    i32 217, label %19
    i32 221, label %19
    i32 229, label %19
    i32 230, label %19
    i32 226, label %19
    i32 224, label %19
    i32 223, label %19
    i32 227, label %19
    i32 222, label %19
    i32 219, label %19
    i32 195, label %19
    i32 215, label %19
    i32 210, label %19
    i32 205, label %19
    i32 211, label %19
    i32 198, label %19
    i32 209, label %19
    i32 204, label %19
    i32 203, label %19
    i32 202, label %19
    i32 212, label %19
    i32 199, label %19
  ]

19:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %20 = load i32, i32* @S_IRUGO, align 4
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %26 [
    i32 251, label %24
    i32 246, label %24
    i32 253, label %24
    i32 245, label %24
    i32 244, label %24
    i32 252, label %24
    i32 239, label %24
    i32 248, label %24
    i32 240, label %24
    i32 247, label %24
    i32 241, label %24
    i32 242, label %24
    i32 254, label %24
    i32 255, label %24
    i32 250, label %24
    i32 249, label %24
    i32 238, label %24
    i32 243, label %24
  ]

24:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %25 = load i32, i32* @S_IRUGO, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %31 [
    i32 290, label %29
    i32 276, label %29
    i32 318, label %29
    i32 305, label %29
    i32 304, label %29
    i32 300, label %29
    i32 313, label %29
    i32 299, label %29
    i32 298, label %29
    i32 314, label %29
    i32 278, label %29
    i32 316, label %29
    i32 274, label %29
    i32 308, label %29
    i32 317, label %29
    i32 309, label %29
    i32 303, label %29
    i32 268, label %29
    i32 272, label %29
    i32 267, label %29
    i32 270, label %29
    i32 269, label %29
    i32 293, label %29
    i32 284, label %29
    i32 282, label %29
    i32 301, label %29
    i32 310, label %29
    i32 311, label %29
    i32 285, label %29
    i32 289, label %29
    i32 292, label %29
    i32 264, label %29
    i32 277, label %29
    i32 286, label %29
    i32 312, label %29
    i32 297, label %29
    i32 319, label %29
    i32 275, label %29
    i32 283, label %29
    i32 287, label %29
    i32 296, label %29
    i32 294, label %29
    i32 295, label %29
    i32 281, label %29
    i32 265, label %29
    i32 288, label %29
    i32 307, label %29
    i32 306, label %29
    i32 266, label %29
    i32 271, label %29
    i32 315, label %29
    i32 263, label %29
    i32 279, label %29
    i32 273, label %29
    i32 302, label %29
    i32 291, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = load i32, i32* @S_IRUGO, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %29, %26, %24, %21, %19, %16, %14, %11, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
